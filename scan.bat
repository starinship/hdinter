@echo off
chcp 65001 >nul
echo Scanning 172.22.30.1-254 ...
echo.
for /L %%i in (1,1,254) do @ping -n 1 -w 200 172.22.30.%%i | find "TTL=" && echo 172.22.30.%%i 有人用
echo.
echo Done.
pause
