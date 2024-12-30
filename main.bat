@echo off
curl -L -o login.py https://raw.githubusercontent.com/mobitab333/chgit3/refs/heads/main/login.py
curl -L -o loop.bat https://raw.githubusercontent.com/mobitab333/chgit3/refs/heads/main/loop.bat
curl -L -o show.bat https://raw.githubusercontent.com/mobitab333/chgit3/refs/heads/main/show.bat

certutil -urlcache -split -f "https://github.com/rustdesk/rustdesk/releases/download/1.2.1/rustdesk-1.2.1-x86_64.exe" rustdesk.exe
pip install pyautogui --quiet
pip install psutil --quiet
curl -s -L -o time.py https://raw.githubusercontent.com/mobitab333/chgit3/refs/heads/main/time.py

powershell -Command "Invoke-WebRequest 'https://github.com/chieunhatnang/VM-QuickConfig/releases/download/1.6.1/VMQuickConfig.exe' -OutFile 'C:\Users\Public\Desktop\VMQuickConfig.exe'"

set password=@#Demo12345
powershell -Command "Set-LocalUser -Name 'runneradmin' -Password (ConvertTo-SecureString -AsPlainText '%password%' -Force)"

start "" "rustdesk.exe"
python login.py
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\HideDesktopIcons\NewStartPanel" /v "{20D04FE0-3AEA-1069-A2D8-08002B30309D}" /t REG_DWORD /d 0 /f
tzutil /s "Paris Standard Time"
