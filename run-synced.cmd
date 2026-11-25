@echo off
rem Run latest upstream with isolated cache and automatic menu progression.
setlocal
set "HERE=%~dp0"
set "VEXE=%HERE%target-gnu-synced\release\victory.exe"
set "GAMEEXE=E:\迅雷云盘\GTA6.Xbox.v1.0.2.1-CYBERLEEK\game_scarlett_master.exe"
set "VICTORY_CONFIG=%HERE%target-gnu-synced\release\victory.toml"
set "VICTORY_CACHE_DIR=%LOCALAPPDATA%\victory-gta6-synced\cache"
set "VICTORY_DATA_DIR=%LOCALAPPDATA%\victory-gta6-synced\data"
set "VICTORY_LATE_WAIT=3"
set "VICTORY_RELAY=2"
set "VICTORY_WIDE_BACK=1"
set "VICTORY_CARD_BUFFERS_MIN_MB=1"
set "VICTORY_CARD_BUFFERS_MB=1024"
set "VICTORY_PIPELINE_WORKERS=16"
set "VICTORY_WAVE_WIDE=0"
set "VICTORY_KEYS=30:Enter,35:Enter,40:Enter,45:Enter,55:Enter,65:Enter,75:Enter,90:Enter,110:Enter"

if not exist "%VEXE%" ( echo victory.exe not found - run build-synced.cmd first & exit /b 1 )
if not exist "%GAMEEXE%" ( echo GTA6 executable not found: %GAMEEXE% & exit /b 1 )
cd /d "%HERE%target-gnu-synced\release"
"%VEXE%" run "%GAMEEXE%" --execute
set "RC=%ERRORLEVEL%"
echo victory exited with code %RC%
endlocal & exit /b %RC%
