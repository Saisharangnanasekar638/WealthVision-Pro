@echo off
cd /d "E:\Portfolio development\Netify"
if errorlevel 1 (
    echo ERROR: Cannot find the project directory
    echo Please check the path: E:\Portfolio development\Netify
    pause
    exit /b 1
)

echo Current directory: %CD%
echo.
echo Starting development server...
echo.
npm run dev
pause

