@echo off

REM Prompt for executable name
set /p EXENAME=Enter desired name for the .exe file (e.g., keylogger):

REM Check if keylogger.py exists
if not exist keylogger.py (
    echo [✗] keylogger.py not found. Please ensure it exists.
    pause
    exit /b
)

REM Build the executable
pyinstaller --onefile --windowed --name "%EXENAME%" keylogger.py

REM Copy the built EXE if it exists
if exist dist\%EXENAME%.exe (
    echo [+] Build succeeded. Copying executable to current directory.
    copy /Y dist\%EXENAME%.exe .
) else (
    echo [✗] Failed to generate dist\%EXENAME%.exe
    pause
    exit /b
)

REM Cleanup after build
if exist build rd /s /q build
if exist dist rd /s /q dist
if exist %EXENAME%.spec del /f /q %EXENAME%.spec

echo [✓] Done.
pause