@echo off
rem Put this file next to Gridfront-Market.exe, then double-click it.
if not exist "%~dp0Gridfront-Market.exe" (
  echo Gridfront-Market.exe is missing from this folder.
  pause
  exit /b 1
)
cd /d "%~dp0"
start "" "%~dp0Gridfront-Market.exe" --rendering-driver opengl3_angle
