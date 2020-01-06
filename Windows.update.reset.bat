@echo off

net stop wuauserv
net stop cryptsvc
net stop bits
net stop msiserver
net stop appidsvc

ren C:\Windows\SoftwareDistribution SoftwareDistribution.old

ren C:\Windows\System32\catroot2 Catroot2.old

del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader Downloader.old

Ren c:\windows\winsxs\pending.xml pending.old

netsh winsock reset

net start wuauserv
net start cryptsvc
net start bits
net start appidsvc
net start msiserver

pause
