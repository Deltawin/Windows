@echo off

:: Supprimer les fichiers temporaires
echo Suppression des fichiers temporaires...
del /f /q %temp%\*

:: Supprimer les fichiers temporaires de l'utilisateur
echo Suppression des fichiers temporaires de l'utilisateur...
del /f /q %userprofile%\AppData\Local\Temp\*

:: Supprimer les fichiers de la corbeille
echo Suppression des fichiers de la corbeille...
rd /s /q %systemdrive%\$Recycle.bin

:: Nettoyer les fichiers systeme inutiles
echo Nettoyage des fichiers système inutiles...
cleanmgr /sagerun:1

:: Vider le cache DNS
echo Vidage du cache DNS...
ipconfig /flushdns

:: Réinitialiser la configuration de Windows Update
echo Réinitialisation de Windows Update...
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

:: Fin du script
echo Nettoyage terminer.
pause