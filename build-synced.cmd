@echo off
rem Build latest upstream with optional high-parallel pipeline workers.
setlocal
set "HERE=%~dp0"
set "PATH=%HERE%build-tools;C:\Users\25939\.cargo\bin;D:\01_Dev_Apps\rustup\toolchains\stable-x86_64-pc-windows-gnu\bin;D:\01_Dev_Apps\rustup\toolchains\stable-x86_64-pc-windows-gnu\lib\rustlib\x86_64-pc-windows-gnu\bin\self-contained;C:\Windows\System32;C:\Windows"
set "CC=C:\mingw64\bin\gcc.exe"
set "AR=C:\mingw64\bin\ar.exe"
set "DLLTOOL=C:\mingw64\bin\dlltool.exe"
set "CARGO_TARGET_DIR=%HERE%target-gnu-synced"
cd /d "%HERE%"
cargo +stable-x86_64-pc-windows-gnu build --release --workspace
endlocal
