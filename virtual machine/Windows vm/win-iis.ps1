install-WindowsFeature -name Web-Server -IncludeManagementTools
Set-Location -path c:\inetpub\wwwroot
Add-Content iisstart.htm `
    "<H1><center>WELCOME to my Web Server $env:COMPUTERNAME</center></H1>"
Invoke-command -ScriptBlock{iisreset}

