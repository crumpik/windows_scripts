REM ## Vzdy zobrazovat vsechny ikony v oznamovaci oblasti tohoto uzivatele

REM ## vzdy zobrazovat vsechny

reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "EnableAutoTray" /t REG_DWORD /d 0 /f

REM ## zobrazovat podle nastaveni [zakomentovany jsou reverzni k odkomentovanym]

REM reg add HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer /v "EnableAutoTray" /t REG_DWORD /d 1 /f
