@echo off
setlocal EnableExtensions
cd /d "%~dp0"
title hdinter free IP scan
echo ========================================
echo  hdinter - find FREE IPs (no ping reply)
echo  Range: 172.22.30.1 - 172.22.30.254
echo  Results file: free-ips.txt
echo  This window stays open when finished.
echo ========================================
echo.
echo Scanning... please wait (about 1 min)...
echo.

set "OUT=%~dp0free-ips.txt"
if exist "%OUT%" del /f /q "%OUT%" >nul 2>&1

for /L %%i in (1,1,254) do (
  ping -n 1 -w 200 172.22.30.%%i | find "TTL=" >nul 2>&1
  if errorlevel 1 (
    echo 172.22.30.%%i
    >>"%OUT%" echo 172.22.30.%%i
  )
)

echo.
echo ========================================
if exist "%OUT%" (
  echo FREE IPs saved to:
  echo %OUT%
  echo.
  echo --- list ---
  type "%OUT%"
) else (
  echo No free IP found. File not created.
)
echo ========================================
echo.
echo Press any key to close...
pause >nul
