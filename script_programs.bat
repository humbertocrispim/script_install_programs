@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

choco install -f -y vmware-horizon-client firefox 7zip google-chrome-x64 anydesk.install lightshot.install forticlientvpn

mkdir C:\Packages
xcopy \\dcwfs01\ARQUIVOS-GAV\DEPARTAMENTOS\Packages\installers\ C:\Packages /E /H /C /I
cd C:\Packages
.\FortiClientVPN.exe /quiet /norestart
powershell -Command {Start-Process -Wait -FilePath '.\Pacote Kaspersky Endpoint 11.10 - Com agente.exe' -Argument "/silent" -PassThru} 
Start-Process -Wait -FilePath '.\Pacote Kaspersky Endpoint 11.10 - Com agente.exe' -Argument "/silent" -PassThru

