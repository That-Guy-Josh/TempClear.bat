@echo off
echo Clearing Temp and %Temp% directories...
echo.

rem Clear the Temp directory (files and folders)
del /q /f "C:\Windows\Temp\*.*"
for /d %%p in ("C:\Windows\Temp\*") do rmdir "%%p" /s /q

rem Clear the user's Temp directory (files and folders)
del /q /f "%temp%\*.*"
for /d %%p in ("%temp%\*") do rmdir "%%p" /s /q

echo Temp directories cleared.
echo.

rem Clear the Recycle Bin using Windows Shell
echo Clearing the Recycle Bin...
echo Y | PowerShell -Command "Get-ChildItem 'C:\$Recycle.Bin' -Recurse | Remove-Item -Recurse -Force"

echo Recycle Bin cleared.
pause
