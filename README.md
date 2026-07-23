# CS:GO-dedicated-server
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square) ![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)  
[![Video](https://img.shields.io/badge/huge%20thanks%20to-this%20vid-%230d1117?style=for-the-badge&logo=youtube&logoColor=white&labelColor=red)](https://www.youtube.com/watch?v=ViOXK04pUu0)
> [!TIP]
> **This is the installer for the software required to host your own Counter Strike Global Offensive server**  

> [!IMPORTANT]
>  **This is for CS:GO not CS2 btw**  

### Installer
- download the bat file [here](https://github.com/pewpewshoot/tf2-dedicated-server/releases/download/Windows/SteamCMD_Installer.bat)
- run it as administrator
- wait for it to complete setup and write
  ```login anonymous```
   then ```app_update 740 validate ```  
### Setup
- download the bat file [here](https://downgit.github.io/#/home?url=https://github.com/pewpewshoot/cs-go-dedicated-server/blob/main/setup.bat)
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

