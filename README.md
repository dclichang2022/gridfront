# 潮汐电网 · GRIDFRONT

一款可操作的 3D 电网规划与电力市场模拟游戏。你要在城市增长、网架容量、发电出力和购售电合同之间做取舍：修路开发街区会带来新的负荷；建设电源和线路才能把电送过去；拥堵、天气和故障会改变供电与结算结果。

**[Windows x64 试玩包](https://github.com/dclichang2022/gridfront/releases/download/v18.0.0/Gridfront-V18-Windows-x64.zip)** · **[macOS 原生试玩包](https://github.com/dclichang2022/gridfront/releases/download/v18.0.0/Gridfront-Market-macOS-universal.zip)**。当前版本为 **V18 试玩版**，两种包内均附操作说明、机制说明和第三方许可。

Windows 包解压后运行 `Gridfront-Market.exe`。Mac 包解压后将 `Gridfront-Market.app` 移入“应用程序”并打开，支持 Intel 和 Apple Silicon，无需 Parallels。Mac 包已完成导出、双架构、可执行权限、签名文件和 ZIP 校验，**尚未在 Mac 实机运行验证**。它采用临时签名、未做 Apple 公证；首次打开如遇拦截，可在 Finder 中按住 Control 点击应用选择“打开”，或到“系统设置 → 隐私与安全性”选择“仍要打开”。

![三维电网总览](docs/screenshots/overview.png)

## 一局里做什么

1. 在三维地图上查看变电站、线路、发电设施和街区，修路、建站、接线，扩建容易拥堵的通道。
2. 看 24 小时预演：找出缺电时段，检查是电源不足、线路卡住，还是街区尚未接通，再决定投资。
3. 每天决定日前采购量和零售报价。实际用电、天气与故障会形成实时偏差，影响现金和客户份额。遇到线路故障时，游戏会停下，留给你抢修决策。

可从“综合规划合约”开始，将城市建设和市场结算放在同一局；也可以分别玩建设或市场模式。

## 游戏画面与机制

| 建设与接入 | 供电覆盖 |
| --- | --- |
| ![建设与接入](docs/screenshots/construction.png) | ![供电覆盖](docs/screenshots/supply.png) |

| 24 小时规划预演 | 日前采购与零售 |
| --- | --- |
| ![24 小时规划预演](docs/screenshots/forecast.png) | ![日前采购与零售](docs/screenshots/day-ahead-market.png) |

| 风暴故障与抢修 | 城市供电验收 |
| --- | --- |
| ![风暴故障与抢修](docs/screenshots/storm-repair.png) | ![城市供电验收](docs/screenshots/city-goal.png) |

这些截图均来自 V18 游戏实际运行画面。

## 模拟边界

电网采用带线路容量约束的简化直流经济调度，按小时处理发电、负荷、储能和节点价格；市场采用日前承诺与实时偏差结算。价格和费用是游戏参数，未用真实市场数据校准。这是帮助理解规划与交易之间因果关系的游戏，不能用于真实调度或投资决策。

由 Godot 4 制作。发行包内含 Godot、Kenney 素材和 godot-road-generator 的许可与署名文件。

## 虚拟机中地图空白

若操作面板和左下角小地图正常、中央三维地图空白，先按 **F** 恢复总览视角，再到游戏菜单中把画质调为“省电”试一次。游戏默认使用 Godot 4.5 的 OpenGL 3.3 兼容渲染；虚拟显卡若对此支持不完整，可能只显示二维界面。可下载本 Release 的 [备用启动脚本](https://github.com/dclichang2022/gridfront/releases/download/v18.0.0/Start-VM-Direct3D11.cmd)，放到 `Gridfront-Market.exe` 同一文件夹后双击。它会尝试经 ANGLE 使用 Direct3D 11；我已在本机验证该模式能正常显示地图，但尚未在反馈者的虚拟机上验证。

如果备用模式仍无效，请在虚拟机内启用 3D 加速，安装或更新对应的虚拟机增强工具/显卡驱动后重启；也可把同一试玩包放到宿主 Windows 运行，帮助区分环境问题。

仍未显示时，请提供虚拟机软件名称、来宾 Windows 版本及游戏日志：在虚拟机里按 Win+R，粘贴 `%APPDATA%\Godot\app_userdata\GRIDFRONT · 市场合约\logs`，打开 `godot.log`。仅凭截图无法确认具体驱动错误，我们会根据日志继续排查。
