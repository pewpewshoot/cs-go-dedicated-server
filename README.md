# CS:GO-dedicated-server
![Windows](https://img.shields.io/badge/Windows-Exclusive-blue.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB2aWV3Qm94PSIwIDAgODggODgiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgaGVpZ2h0PSI4OCIgd2lkdGg9Ijg4Ij4KPHBhdGggZD0ibTAgMTIuNDAyIDM1LjY4Ny00Ljg2LjAxNiAzNC40MjMtMzUuNjcuMjAzem0zNS42NyAzMy41MjkuMDI4IDM0LjQ1M0wuMDI4IDc1LjQ4LjAyNiA0NS43em00LjMyNi0zOS4wMjVMODcuMzE0IDB2NDEuNTI3bC00Ny4zMTguMzc2em00Ny4zMjkgMzkuMzQ5LS4wMTEgNDEuMzQtNDcuMzE4LTYuNjc4LS4wNjYtMzQuNzM5eiIgZmlsbD0iIzAwYWRlZiIvPgo8L3N2Zz4=) ![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square) ![Open Source Love](https://badges.frapsoft.com/os/v2/open-source.svg?v=103)   
> [!TIP]
> **This required to host your own Counter Strike Global Offensive server**  

> [!IMPORTANT]
>  **This is for CS:GO not CS2 btw**  

### Downloading the base server


<details>

<summary>With Steam installed</summary>  
Press ``` Win+R ``` and paste in the following: ```steam://run/740```.  
Confirm the download request in the Steam app and then visit the install directory, usually  ```C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server ```

</details>


<details>

<summary>Without Steam</summary>  
Open your Command Prompt and paste in the following:

```ruby
   mkdir "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server"
   cd documents
   mkdir SteamCMD
```
Paste the following to download SteamCMD; the download link is not a virus as it has been directly taken from Valve's own developer wiki, as seen [here](https://developer.valvesoftware.com/wiki/SteamCMD#_Windows).
```ruby
   cd SteamCMD
   powershell Invoke-WebRequest https://client-update.steamstatic.com/installer/steamcmd.zip -OutFile steamcmd.zip
   tar -xf steamcmd.zip

```

In case the following steps don't work set your DNS to Google (8.8.8.8).
```ruby
netsh interface ipv4 set dnsservers "Wi-Fi" static 8.8.8.8 primary  
netsh interface ipv4 set dnsservers "Ethernet" static 8.8.8.8 primary 

```



steamcmd +force_install_dir "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive Beta - Dedicated Server"  +login anonymous +app_update 740 

</details>















### Installer
- download the bat file [here](https://github.com/pewpewshoot/cs-go-dedicated-server/releases/download/Windows/SteamCMD_Installer.bat)
- run it as administrator
- wait for it to complete setup and write
  ```login anonymous```
   then ```app_update 740 validate```




### Setup (doesnt work 4 now)
- download the bat file [here](https://downgit.github.io/#/home?url=https://github.com/pewpewshoot/cs-go-dedicated-server/blob/main/setup.bat)
- configure as needed


### To do
- Sourcemod and Metamod installer
- Popular plugin installer (Lilac, Skinchanger)  
pls hlep me :(

