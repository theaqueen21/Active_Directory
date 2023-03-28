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


