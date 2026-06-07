@echo off
echo ===================================
echo MongoDB Project Setup
echo ===================================
echo.

echo Checking if Node.js is installed...
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Node.js is not installed!
    echo.
    echo Please install Node.js from https://nodejs.org/
    echo Then run this script again.
    echo.
    pause
    exit /b 1
)

echo Node.js is installed. Proceeding with setup...
echo.

echo Installing npm dependencies...
call npm install

if %errorlevel% neq 0 (
    echo.
    echo ERROR: npm install failed!
    echo.
    pause
    exit /b 1
)

echo.
echo ===================================
echo Setup Complete!
echo ===================================
echo.
echo Your MongoDB project is ready!
echo.
echo Next steps:
echo 1. Make sure MongoDB is running on localhost:27017
echo 2. To start the server, run: npm run dev
echo.
pause
