param(
    [Parameter(Mandatory=$true)] $JsonFile,
    [switch]$Undo
)

$json = ( Get-Content $JsonFile | ConvertFrom-Json )
$Global:Domain = $json.domain

function CreateADGroup {
    param (
        [Parameter(Mandatory=$true)] $GroupObject)
        $name = $GroupObject.name
        New-ADGroup -name $name -GroupScope Global
       
}

function RemoveADGroup(){
    param( [Parameter(Mandatory=$true)] $groupObject )

    $name = $groupObject.name
    Remove-ADGroup -Identity $name -Confirm:$False
}

function CreateADUser {
    param (
        [Parameter(Mandatory=$true)] $userObject)
    
    # Pull Out The Name, Nationality And Password From The JSON File
    $name = $userObject.name
    $password = $userObject.password
    $nationality = $userObject.Nationality

    # Create A First Initial Last Name UserName
    $firstname , $lastname = $name.Split(" ")
    $username = ($firstname[0] + $lastname).ToLower()

    #Specify A Username DomainName Email
    $email = $username + "@" + $Global:Domain
    $SamAccountName = $username
    $PrincipalName = $firstname + $lastname + "@" + $Global:Domain

    # Create ADUser Function
    New-ADUser -Name "$name" -GivenName $firstname -Surname $lastname -SamAccountName $SamAccountName -UserPrincipalName $PrincipalName -Country $nationality -EmailAddress $email -AccountPassword (ConvertTo-SecureString $password -AsPlainText -Force) -PassThru | Enable-ADAccount
}

function RemoveADUser {
    param ([Parameter(Mandatory=$true)] $userObject)
    $name = $userObject.name
    $firstname , $lastname = $name.Split(" ")
    $username = ($firstname[0] + $lastname).ToLower()
    $SamAccountName = $username
    Remove-ADUser -Identity $SamAccountName -Confirm:$false
}

function WeakenPasswordPolicy(){
    secedit /export /cfg C:\Windows\Tasks\secpol.cfg
    (Get-Content C:\Windows\Tasks\secpol.cfg).replace("PasswordComplexity = 1", "PasswordComplexity = 0").replace("MinimumPasswordLength = 7", "MinimumPasswordLength = 1") | Out-File C:\Windows\Tasks\secpol.cfg
    secedit /configure /db c:\windows\security\local.sdb /cfg C:\Windows\Tasks\secpol.cfg /areas SECURITYPOLICY
    rm -force C:\Windows\Tasks\secpol.cfg -confirm:$false
}

function StrengthenPasswordPolicy{
    secedit /export /cfg C:\Windows\Tasks\secpol.cfg
    (Get-Content C:\Windows\Tasks\secpol.cfg).replace("PasswordComplexity = 0", "PasswordComplexity = 1").replace("MinimumPasswordLength = 1", "MinimumPasswordLength = 7") | Out-File C:\Windows\Tasks\secpol.cfg
    secedit /configure /db c:\windows\security\local.sdb /cfg C:\Windows\Tasks\secpol.cfg /areas SECURITYPOLICY
    rm -force C:\Windows\Tasks\secpol.cfg -confirm:$false
}

# Add The User To Its Proper Group
foreach ($group_name in $userObject.groups){
    Get-ADGroup -Identity "$group_name"  
    Add-ADGroupMember -Identity $group_name -Members $username
}
if ( -not $Undo) {

    WeakenPasswordPolicy

    # Create ADGroups
    foreach ($group in $json.groups){
        CreateADGroup $group
    }

    # Create ADUser
    foreach ($user in $json.users){
        CreateADUser $user
    }
}else {

    StrengthenPasswordPolicy

    #Remove ADUsers
    foreach ( $user in $json.users ){
        RemoveADUser $user
    }

    #Remove ADGroup
    foreach ( $group in $json.groups ){
        RemoveADGroup $group
    }
}


