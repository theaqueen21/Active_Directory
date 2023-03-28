# 01.Install Domain Controller

1. Install the Active Directory Windows Feature

```shell
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```

2. Configure The Active Directory

```shell
import-Module ADDSDeployment
```

```shell
Install-ADDSForest
```
Choose A DomainName Of Your Liking And Set A Password
![1](https://user-images.githubusercontent.com/94680549/228231459-d6e1c399-c364-4715-b6e3-1ed6add389d0.png)

After The Server Has Restarted, We Need To Reconfigure The DNS Settings

```shell
Get-DNSClientServerAddress
```
![2](https://user-images.githubusercontent.com/94680549/228236889-f385f7d5-f5dd-4297-8268-fda7114b23dc.png)
As You Can See The DNS Has Changed To Local Network Which Puts It In A Loop

To Change It

```shell
Set-DNSClientServerAddress -InterfaceIndex # -ServerAddress {StaticIPOfTheServer}
```
![3](https://user-images.githubusercontent.com/94680549/228237517-329090e1-bf22-40eb-bc94-a74804018440.png)




