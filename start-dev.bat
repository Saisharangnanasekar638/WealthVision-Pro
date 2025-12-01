@echo off
cd /d "E:\Portfolio development\Netify"
echo Current directory: %CD%
echo.
echo Starting development server...
echo.
echo The server will be available at:
echo   - http://localhost:3000
echo   - http://127.0.0.1:3000
echo.
echo Press Ctrl+C to stop the server
echo.
npm run dev
pause

