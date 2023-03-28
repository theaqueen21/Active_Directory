# Joining the Workstation to the domain

1.First We Change The DNS Settings And Set The DNS Server To Our DC's IP(From The Terminal On Win11 And Powershell On Win10)

```shell
Set-DNSClientServerAddress -InterfaceIndex {InterfaceIndex} -ServerAddresses {StaticIPOfTheDC}
```
![4](https://user-images.githubusercontent.com/94680549/228242752-9245cc00-a04c-4476-8a3a-200822a8fa28.png)



2.Second Join The Workstation To The AD

```
Add-Computer -Domainname xyz.com -Credential xyz\Administrator -Force -Restart
```
![5](https://user-images.githubusercontent.com/94680549/228244644-b897ec4e-e9e9-4900-8dd3-0d9ea28ed2b7.png)

