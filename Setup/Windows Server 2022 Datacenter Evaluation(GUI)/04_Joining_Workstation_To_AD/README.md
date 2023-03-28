# Joining the Workstation to the domain

1.First We Change The DNS Settings And Set The DNS Server To Our DC's IP(From The Terminal On Win11 And Powershell On Win10)

```shell
Set-DNSClientServerAddress -InterfaceIndex {InterfaceIndex} -ServerAddresses {StaticIPOfTheDC}
```
![4](https://user-images.githubusercontent.com/94680549/228242752-9245cc00-a04c-4476-8a3a-200822a8fa28.png)



2.Second Join The Workstation To The AD

![2023-03-28 19_57_55-Greenshot](https://user-images.githubusercontent.com/94680549/228313303-0c454b9b-538b-4506-86e6-f5aa2d22376c.jpg)
![2023-03-28 19_58_18-Greenshot](https://user-images.githubusercontent.com/94680549/228313335-df5c10b6-93fb-4b4a-91e0-d829f6d22709.jpg)
![2023-03-28 19_59_08-Greenshot](https://user-images.githubusercontent.com/94680549/228313362-adde4ee9-0c94-4a12-9e61-7702e36cacf4.jpg)

Enter The Domain Of The Local AD
![2023-03-28 20_06_47-Greenshot](https://user-images.githubusercontent.com/94680549/228313406-56efb783-0072-4d91-95d7-aa3ae9db5d0d.jpg)

Enter The Username And Password Of The AD Administrator
![2023-03-28 20_14_11-Greenshot](https://user-images.githubusercontent.com/94680549/228313497-e6d43cfb-6ccb-4bdf-bddc-be4de60a9947.jpg)
![2023-03-28 20_14_33-Greenshot](https://user-images.githubusercontent.com/94680549/228313628-136aa2dd-5d3f-40be-ab50-bc02ffd0a2b0.jpg)

Set Default Permissions For The Workstation
![2023-03-28 20_15_06-Greenshot](https://user-images.githubusercontent.com/94680549/228313734-3eb1f190-4eab-405f-947b-21d3543155c6.jpg)

Restart For Changes To Take Effects
![2023-03-28 20_15_19-Greenshot](https://user-images.githubusercontent.com/94680549/228313760-42f3247f-4c64-49fc-87b1-e36ca14db28b.jpg)
