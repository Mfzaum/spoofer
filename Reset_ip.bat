@echo off
netsh int ip set address "%%j" dhcp 
netsh int ip set dns "%%j" dhcp 
netsh interface set interface name="%%j" admin=enabled 
certutil -URLCache * delete 
netsh int ip reset 
netsh int ipv4 reset 
netsh int ipv6 reset 
ipconfig / >nul
ipconfig /release >nul
ipconfig /renew >nul
ipconfig /flushdns >nul
netsh advfirewall reset
netsh winsock reset
netsh int ip reset
netsh winsock reset 
netsh advfirewall reset