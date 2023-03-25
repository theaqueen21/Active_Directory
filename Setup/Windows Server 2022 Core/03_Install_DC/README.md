# 01.Install Domain Controller

1. Install the Active Directory Windows Feature

```shell
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
```

# Joining the Workstation to the domain



```
Add-Computer -Domainname xyz.com -Credential xyz\Administrator -Force -Restart
```
