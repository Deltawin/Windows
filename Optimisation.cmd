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

echo Desactiver RuntimeBroker
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\TimeBrokerSvc /v Start /t REG_DWORD /d 4 /f

echo desactiver cortana
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows" "Search /v AllowCortana /t REG_DWORD /d 0 /f

echo desactiver smartscreen
REG ADD HKLM\SOFTWARE\Policies\Microsoft\Windows\System /v EnableSmartScreen /t REG_DWORD /d 0 /f
RED ADD HLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v SmartScreenEnabled /t REG_SZ /D Off /f

echo desactiver centre de securite
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\wscsvc /v Start /t REG_DWORD /d 4 /f

echo desactive sysmain
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\SysMain /v Start /t REG_DWORD /d 4 /f

echo desactiver securityHealthService
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\SecurityHealthService /v Start /t REG_DWORD /d 4 /f

echo desactiver services biometrie
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\WbioSrvc /v Start /t REG_DWORD /d 4 /f

echo desactiver services consommation des donnees
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\DusmSvc /v Start /t REG_DWORD /d 4 /f

echo desactive services client de suivi de lien distribue
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\TrkWks /v Start /t REG_DWORD /d 4 /f

echo desactiver services defender
REG ADD HKLM\SYSTEM\CurrentControlSet\Services\WinDefend /v Start /t REG_DWORD /d 4 /f

pause
