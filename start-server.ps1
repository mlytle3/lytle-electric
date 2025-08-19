# Lytle Electric Web Server Starter
Write-Host "Starting Lytle Electric Web Server..." -ForegroundColor Green
Write-Host ""

# Check for Python installation in the standard location
$pythonPath = "$env:LOCALAPPDATA\Programs\Python\Python313\python.exe"

if (Test-Path $pythonPath) {
    Write-Host "Found Python 3.13 installation" -ForegroundColor Green
    Write-Host "Starting web server on http://localhost:8000" -ForegroundColor Green
    Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Cyan
    Write-Host ""
    
    # Start the server
    & $pythonPath -m http.server 8000
}
else {
    Write-Host "Python not found at expected location: $pythonPath" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please check your Python installation" -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
}
