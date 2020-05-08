Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#write the profile out
$newpath = $env:path, ";C:\Program Files\Git\cmd" -join ''
$newpath >> $PROFILE.CurrentUserAllHosts

choco feature enable -n allowGlobalConfirmation
choco install iridium-browser -y

# browsers
choco install googlechrome -y
choco install lastpass-chrome -y

choco install microsoft-edge -y


# shells
choco install powershell-core -y
choco install powershellhere -y
choco install azure-cli -y
choco install postman -y

#coding
choco install git -y
choco install vscode -y

#utils

choco install 7zip -y


# debloat windows 10
New-item c:\Source -force
cd \Source
start-process powershell -ArgumentList '-noexit -command "git clone https://github.com/Sycnex/Windows10Debloater.git;./Windows10Debloater/Windows10Debloater.ps1 -Debloat"'