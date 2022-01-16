@echo off
QRes.exe /X 1280 /Y 720 /R 60
start "" "C:\Riot Games\Riot Client\RiotClientServices.exe" --launch-product=valorant --launch-patchline=live
timeout /t 5 > NUL

:loop
tasklist /fi "imagename eq RiotClientServices.exe" | find ":" > nul
if errorlevel 1 (goto loop)

QRes.exe /X 1920 /Y 1080
exit