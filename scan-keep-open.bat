@echo off
cd /d "%~dp0"
cmd /k "scan.bat & echo. & echo If scan ended early, read errors above."
