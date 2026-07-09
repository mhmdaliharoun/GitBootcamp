Connect-MgGraph `
    -ClientId $env:AZURE_CLIENT_ID `
    -TenantId $env:AZURE_TENANT_ID `
    -ClientSecret ($env:AZURE_CLIENT_SECRET | ConvertTo-SecureString -AsPlainText -Force)

$users = Get-MgUser -All

$users |
    Select-Object DisplayName, UserPrincipalName |
    Export-Csv users.csv -NoTypeInformation

Write-Host "Exported $($users.Count) users."