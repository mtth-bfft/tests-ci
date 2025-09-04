Write-Host " [+] Provisionning script running"

Stop-Service wuauserv -Force
Set-Service wuauserv -Startup disabled

Install-WindowsFeature -Name "ad-domain-services" -IncludeManagementTools
