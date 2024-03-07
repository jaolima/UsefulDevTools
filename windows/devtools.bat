@echo off
cls

echo Installing Chocolatey...

@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command " [System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

echo Installing apps via Chocolatey....

echo Installing latest Node.js...
choco install nodejs -y

echo Installing Chrome ...
choco install chrome

echo Installing Visual Studio Code...
choco install vscode -y

echo Installing Git...
choco install git -y
setx /M PATH "%PATH%;C:\Program Files\Git\bin;C:\Program Files\Git\cmd"

echo Installing Python...
choco install python -y
setx /M PATH "%PATH%;C:\Python39;C:\Python39\Scripts"

echo Installing Docker...
choco install docker-desktop -y

echo Installing QGIS...
choco install qgis -y

Verifying intalations...
node -v
npm -v
code --version
git --version
python --version
docker --version

echo FinisHim.