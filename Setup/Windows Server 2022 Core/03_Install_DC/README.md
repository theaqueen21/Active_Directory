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


# Joining the Workstation to the domain


```
Add-Computer -Domainname xyz.com -Credential xyz\Administrator -Force -Restart
```
