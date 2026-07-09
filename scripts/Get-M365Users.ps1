$ClientSecret = ConvertTo-SecureString $env:AZURE_CLIENT_SECRET -AsPlainText -Force

$Credential = New-Object System.Management.Automation.PSCredential (
    $env:AZURE_CLIENT_ID,
    $ClientSecret
)

Connect-MgGraph `
    -TenantId $env:AZURE_TENANT_ID `
    -ClientSecretCredential $Credential

$users = Get-MgUser -All

$users |
    Select-Object DisplayName, UserPrincipalName |
    Export-Csv users.csv -NoTypeInformation

Write-Host "Exported $($users.Count) users."