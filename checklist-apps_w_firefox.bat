REM @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
choco feature enable -n=allowEmptyChecksums
cinst dotnet3.5
cinst libreoffice
cinst 7zip.install
cinst vlc
cinst googlechrome

REM instalace ceskeho firefoxu 32bit bez ohledu na bitovou verzi Windows a jazykovou vybavu
cinst wget
md C:\ProgramData\chocolatey\tempfirefox
cd C:\ProgramData\chocolatey\tempfirefox
wget "https://download.mozilla.org/?product=firefox-latest&os=win&lang=cs" --output-document=firefox.exe
@start /wait C:\ProgramData\chocolatey\tempfirefox\firefox.exe -ms
cd C:\Windows\system32
rd /s /q C:\ProgramData\chocolatey\tempfirefox
cinst firefox

cinst adobereader
REM choco install jre8 -PackageParameters "/exclude:64"
choco feature disable -n=allowGlobalConfirmation
choco feature disable -n=allowEmptyChecksums
