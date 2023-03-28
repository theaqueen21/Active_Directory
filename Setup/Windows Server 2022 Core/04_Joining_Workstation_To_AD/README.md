# Joining the Workstation to the domain

1.First We Change The DNS Settings And Set The DNS Server To Our DC's IP(From The Terminal On Win11 And Powershell On Win10)
```shell
Set-DNSClientServerAddress -InterfaceIndex {InterfaceIndex} -ServerAddresses {StaticIPOfTheDC}
```



2.Second,Join The Computer To The AD
```
Add-Computer -Domainname xyz.com -Credential xyz\Administrator -Force -Restart
```
