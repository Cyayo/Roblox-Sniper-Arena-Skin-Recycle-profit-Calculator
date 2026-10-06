@echo off
setlocal enabledelayedexpansion
set "SCRIPT_DIR=%~dp0"
set "HTML_PATH=%SCRIPT_DIR%index.html"

if not exist "%HTML_PATH%" (
    echo ============================================================
    echo [ERROR] index.html not found in the current folder!
    echo.
    echo Please make sure you downloaded and extracted the complete
    echo repository ZIP folder, so index.html and rap.png are in the
    echo same folder as Launch_App.bat.
    echo ============================================================
    echo.
    pause
    exit /b 1
)

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%HTML_PATH%" --window-size=520,880
    exit /b
)

if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
    start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%HTML_PATH%" --window-size=520,880
    exit /b
)

if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%HTML_PATH%" --window-size=520,880
    exit /b
)

start "" "%HTML_PATH%"
exit /b
