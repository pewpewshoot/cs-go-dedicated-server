@echo off
title CSGO Server setup
color 0A
ECHO Creating a Server directory...
mkdir "%USERPROFILE%\documents\csgods
cls
ECHO Server directory done...
cd "%USERPROFILE%\documents\csgods
ECHO Downloading Steamcmd
powershell Invoke-WebRequest https://client-update.steamstatic.com/installer/steamcmd.zip -OutFile steamcmd.zip  
REM DOWNLOADS STEAMCMD
tar -xf steamcmd.zip
cls
netsh interface ipv4 set dnsservers "Wi-Fi" static 8.8.8.8 primary  
netsh interface ipv4 set dnsservers "Ethernet" static 8.8.8.8 primary 
ECHO Setting DNS to google.. 
REM FIXES SOME DOWNLOAD ISSUES
cls 
START /WAIT cmd /c steamcmd
REM login anonymous
REM app_update 740 validate
REM COMMENTED THE ABOVE OUT SINCE IT DOESN'T WORK

cmd /k
