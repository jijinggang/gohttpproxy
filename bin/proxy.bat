@echo off
reg ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t reg_dword /d "1" /f
echo "Proxy enabled...."

pause

reg ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "ProxyEnable" /t reg_dword /d "0" /f
echo "Proxy disabled..."

pause