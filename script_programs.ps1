Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install -f -y vmware-horizon-client firefox 7zip googlechrome anydesk.install lightshot.install adobereader
mkdir C:\Packages
xcopy \\dcwfs01\ARQUIVOS-GAV\DEPARTAMENTOS\Packages\installers\ C:\Packages /E /H /C /I
cd C:\Packages
.\FortiClientVPN.exe /quiet /norestart
Start-Process -Wait -FilePath '.\Pacote Kaspersky Endpoint 11.10 - Com agente.exe' -Argument "/silent" -PassThru
