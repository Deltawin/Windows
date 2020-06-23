@echo off

echo Desactiver la date de dernier acces aux fichiers
fsutil behavior set disablelastaccess 1

echo Forcer l'arret des logiciels recalcitrants - Windows toutes versions
REG ADD HKCU\ControlPanel\Desktop /v WaitToKillAppTimeout /t REG_SZ /d 2000 /f

echo Forcer l'arret des services recalcitrants - Windows toutes versions
REG ADD HKLM\SYSTEM\CurrentControlSet\Control /v WaitToKillServiceTimeout /t REG_SZ /d 2000 /f

echo DLL plus utilisees - Windows toutes versions
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v AlwaysUnloadDll /t REG_DWORD /d 1 /f

echo Desactiver le mode hibernation
powercfg -h off

Ameliorer les capacite du processeur
REG ADD HKLM\SOFTWARE\Microsoft\Windows" "NT\CurrentVersion\Multimedia\SystemProfile /v SystemResponsiveness /t REG_DWORD /d 0 /f

echo espace reserve
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\ReserveManager /v ShippedWithReserves /t REG_DWORD /d 0 /f

Désactiver ndu
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\ /v Ndu /t REG_DWORD /d 4 /f

Désactiver prefetch & superfetch
REG ADD HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters /v EnablePrefetcher /t REG_DWORD /d 0 /f

pause
