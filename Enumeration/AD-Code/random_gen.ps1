param([Parameter(Mandatory=$true)] $OutJsonFile)

$group_names = [System.Collections.ArrayList](Get-Content "$PWD/Data/group_names.txt")
$first_names = [System.Collections.ArrayList](Get-Content "$PWD/Data/first_names.txt")
$last_names = [System.Collections.ArrayList](Get-Content "$PWD/Data/last_names.txt")
$passwords = [System.Collections.ArrayList](Get-Content "$PWD/Data/passwords.txt")

$groups = @()

$num_groups = 11

for ( $i = 0; $i -lt $num_groups ; $i++ ){
    $new_group = (Get-Random -InputObject $group_names)
    $groups += @{"name" = "$new_group"}
    $group_names.Remove($new_group)
}

$num_users = 100
$users = @()
for ( $i = 0; $i -lt $num_users ; $i++ ){
    $first_name = (Get-Random -InputObject $first_names)
    $last_name = (Get-Random -InputObject $last_names)
    $password = (Get-Random -InputObject $passwords)
    $new_user = @{ `
        "name" = "$first_name $last_name"
        "password" = "$password"
        "group" = @( (Get-Random -InputObject $groups).name )
        }
    $users += $new_user
    $first_names.Remove($first_name)
    $last_names.Remove($last_name)
    $passwords.Remove($password)
}

@{
    "domain" = "xyz.com"
    "groups" = $groups
    "users" = $users
} | ConvertTo-Json | Out-File $OutJsonFile
