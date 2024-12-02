#Script to create a new AD user with the parameters passed in by the user

#Getting parameters for script from user
param (
    [Parameter(Mandatory=$true)]
    [string]$FirstName,

    [Parameter(Mandatory=$true)]
    [string]$LastName,

    [Parameter(Mandatory=$true)]
    [string]$UserName,

    [Parameter(Mandatory=$true)]
    [string]$OU,

    [Parameter(Mandatory=$true)]
    [string]$Domain

)

#Generate Random Password
$Password = -join((0x30..0x39)+(0x41..0x5A)+(0x61..0x7A) | Get-Random -Count 12 | ForEach-Object {[char]$_})
Write-Host "Password Generated as: $Password"

$SecurePassword = ($Password | ConvertTo-SecureString -AsPlainText -Force)
#Make a call to New-ADUser to create the AD user
New-ADUser `
    -SamAccountName $UserName `
    -UserPrincipalName "$Username@$Domain" `
    -Name "$FirstName $LastName" `
    -GivenName $FirstName `
    -Surname $LastName `
    -AccountPassword $SecurePassword `
    -Enabled $true `
    -Path "OU = $OU, DC = LAB, DC = local" ` # change DC accodinng to your domain contoller name.
    -PasswordNeverExpires $false `
    -ChangePasswordAtLogon $true
