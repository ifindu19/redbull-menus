::Pinger
@echo off
echo Note - this isnt a stresser or ddoser, it just pings a network (i put it here so it gets downloads)
echo Please enter target IP.
set /P id=Enter IP:
echo %id% is the target IP set.
echo Please enter packet size (1-65500)
set /P packets=Enter packet size:
echo %packets% is the packet size.
echo Pinger deploying...
timeout /t 2 /nobreak >nul
goto stress
:stress
cls
echo Stressing %id% with %packets% packets.
ping %id% -t -l %packets%