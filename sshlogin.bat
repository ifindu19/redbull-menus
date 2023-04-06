@echo off
:newton
echo This will only work if the target machine is on your network and has remote access enabled. You will also need the machines password
echo Note that you can only use terminal commands.
echo Target IP should be one on your network. (not a public IP)
echo Public IP example: 122.205.240.148 (the ip that comes up when you type What is my IP? into google)
echo Private IP example: 192.168.0.56 (192.168.0.1 would be the router address)
set /P ip=Enter IP:
if %ip%==return goto r
echo %ip% is the IP set.
echo Please type the account username on the desired machine.
set /P username=Enter user:
if %username%==return goto r
echo You entered %username% as the user.
echo Attempting SSH access..
ssh %username%@%ip%
goto tempo
:tempo
echo This is a temporary text file made during SSH injection process. > tempfile.txt >nul
if not exist "tempfile.txt" goto billy
:billy
echo SSH remote access failed. Please try again.
timeout /t 3 /nobreak >nul
cls
goto newton