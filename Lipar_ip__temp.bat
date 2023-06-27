@echo off
del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
del c:\WIN386.SWP
cls
IPCONFIG /FLUSHDNS
IPCONFIG /RELEASE
NET STOP DNSCACHE
NET STOP DHCP
NET START DNSCACHE
NET START DHCP
IPCONFIG /REGISTERDNS
arp -a -d
netsh interface ip delete arpcache
netsh interface ip delete destinationcache
IPCONFIG /FLUSHDNS
IPCONFIG /RENEW