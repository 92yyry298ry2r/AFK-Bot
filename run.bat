@echo off
title AFK Bot

echo =========================================
echo          Starting AFK Bot...
echo =========================================

:: Check if Node.js is installed
node -v >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Node.js is not installed!
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b
)

:: Check if node_modules folder exists. If not, install dependencies.
if not exist node_modules\ (
    echo [INFO] First time setup: Installing dependencies...
    npm install
)

:: Run the bot
echo [INFO] Running bot...
node index.js

:: Keep the window open if the bot crashes
echo.
echo [ERROR] Bot has crashed or stopped!
pause