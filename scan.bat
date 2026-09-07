@echo off
chcp 65001 >nul
setlocal EnableDelayedExpansion
set "OUT=%~dp0free-ips.txt"
if exist "%OUT%" del "%OUT%"
echo 掃描 172.22.30.1–254（只顯示無人使用、可选用的 IP）...
echo.

for /L %%i in (1,1,254) do (
  ping -n 1 -w 200 172.22.30.%%i | find "TTL=" >nul 2>&1
  if errorlevel 1 (
    echo 172.22.30.%%i
    >>"%OUT%" echo 172.22.30.%%i
  )
)

echo.
if exist "%OUT%" (
  echo === 無人使用（可选用）IP 清單 ===
  type "%OUT%"
  echo.
  echo 已寫入：%OUT%
) else (
  echo 沒有找到空闲 IP（1–254 似乎都有回應）。
)
echo.
pause
