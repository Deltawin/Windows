@echo off
powercfg -h off

PowerShell -Command "Get-AppXPackage | Remove-AppxPackage"

REG ADD "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control" /v SvcHostSplitThresholdInKB /t REG_DWORD /d 33554432 /f

pause