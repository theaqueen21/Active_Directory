# Joining the Workstation to the domain

1.First We Change The DNS Settings And Set The DNS Server To Our DC's IP(From The Terminal On Win11 And Powershell On Win10)
```shell
Set-DNSClientServerAddress -InterfaceIndex {InterfaceIndex} -ServerAddresses {StaticIPOfTheDC}
```
![4](https://user-images.githubusercontent.com/94680549/228242752-9245cc00-a04c-4476-8a3a-200822a8fa28.png)



2.Second,Join The Computer To The AD
```
Add-Computer -Domainname xyz.com -Credential xyz\Administrator -Force -Restart
```
