# tf2-dedicated-server
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square) ![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)    
> [!TIP]
> **This is the already compiled software required to host your own Team Fortress 2 server**  
### Installer
- download the bat file [here](https://downgit.github.io/#/home?url=https://github.com/pewpewshoot/tf2-dedicated-server/blob/main/installer.bat)
- run it as administrator
- wait for it to complete setup and write
  ```login anonymous```
   then ```app_update 232250 validate ```  
### Setup
- download the bat file [here](https://downgit.github.io/#/home?url=https://github.com/pewpewshoot/tf2-dedicated-server/blob/main/setup.bat)
- configure as needed


<details>

<summary><b>Code explained </summary>

installer.bat

```ruby
@echo off
title TF2 Server setup
color 0A
ECHO Creating a Server directory...
mkdir "%USERPROFILE%\documents\tf2ds
cls
ECHO Server directory done...
cd "%USERPROFILE%\documents\tf2ds
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
REM app_update 232250 validate
REM COMMENTED THE ABOVE OUT SINCE IT DOESN'T WORK

cmd /k
```

</details>



### To do
- Sourcemod and Metamod installer
- Popular plugin installer (Lilac, RTD)  
pls hlep me :(

