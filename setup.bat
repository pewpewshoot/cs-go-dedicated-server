@ECHO OFF
title TF2 server setup
color 0A
:MainMenu
    CLS
    ECHO ===========================
    ECHO      Server Setup
    ECHO ===========================
    ECHO.
    ECHO   1. Make a launcher 
    ECHO   2. test
    ECHO   3. Exit
    ECHO.
    
    CHOICE /C 123 /N /M "Please enter your choice [1,2,3]: "
    
    REM --- Process the choice. Remember to check ERRORLEVEL from HIGHEST to LOWEST ---
    IF ERRORLEVEL 3 GOTO :ExitScript
    IF ERRORLEVEL 2 GOTO :Option2
    IF ERRORLEVEL 1 GOTO :Option1



:Option1
    ECHO.
    ECHO Making Launcher
mkdir "%USERPROFILE%\documents\tf2ds\downloadfolder
cd "%USERPROFILE%\documents\tf2ds\downloadfolder
powershell Invoke-WebRequest https://github.com/pewpewshoot/tf2-dedicated-server/archive/refs/heads/main.zip -OutFile main.zip  
tar -xf main.zip
powershell Copy-Item "%USERPROFILE%\documents\tf2ds\downloadfolder\tf2-dedicated-server-main\start.bat"  -Destination '%USERPROFILE%\documents\tf2ds\steamapps\common\Team Fortress 2 Dedicated Server'
cmd /k
    PAUSE
    GOTO :MainMenu



:Option2
    ECHO.
    ECHO test
    PAUSE
    GOTO :MainMenu

:ExitScript
    ECHO.
    ECHO Exiting the script.
    EXIT /B

