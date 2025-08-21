1. Open Microsoft Powershell as Administrator.
2. Run "Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 0x300 | iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
3. Run the script using this command ".\windows-dev-setup.ps1".