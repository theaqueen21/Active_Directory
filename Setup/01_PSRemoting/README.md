1. Enabling Powershell Remoting

```shell
Enable-PSRemoting -Force
```

2. Adding The Client To The Trusted Hosts

```shell
Set-Item WSMan:\localhost\Client\TrustedHosts -Value {ip}
```

In Case Of Thise Error Message

```shell
Start-Service WinRM
```

To Check TrustedHosts
```shell
Set-Item WSMan:\localhost\Client\TrustedHosts
```

Adding A Second Client To The TrustedHosts
```shell
Set-Item WSMan:\localhost\Client\TrustedHosts -Concatentate -Value {ip}
```

3. Entering A PSSession by:

#01 Creating A New Session Then Entering 
```shell
New-PSSession -ComputerName {ip} -Credential (Get-Credential)
```
```shell
Enter-PSSession {#id}
```

#02 Entering A Session
```shell
Enter-PSSession -ComputerName {ip} -Credential (Get-Credential)
```