@echo off
echo ========================================
echo Starting Development Server
echo ========================================
echo.

cd /d "E:\Portfolio development\Netify"

echo Checking Node.js...
node --version
if errorlevel 1 (
    echo ERROR: Node.js is not installed or not in PATH
    pause
    exit /b 1
)

echo.
echo Installing dependencies (if needed)...
call npm install

echo.
echo Starting Vite development server...
echo.
echo The server will be available at:
echo   - http://localhost:3000
echo   - http://127.0.0.1:3000
echo.
echo Keep this window open while using the app.
echo Press Ctrl+C to stop the server.
echo.
echo ========================================
echo.

call npm run dev

pause

