@echo off
echo Starting Lytle Electric Web Server...
echo.
echo Server will be available at: http://localhost:8000
echo Press Ctrl+C to stop the server
echo.

REM Use the full path to Python 3.13
"%LOCALAPPDATA%\Programs\Python\Python313\python.exe" -m http.server 8000
