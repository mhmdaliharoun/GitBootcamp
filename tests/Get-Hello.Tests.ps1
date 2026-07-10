Write-Host "PSScriptRoot = $PSScriptRoot"

$ScriptPath = Join-Path $PSScriptRoot "../scripts/Get-Hello.ps1"

Write-Host "Script Path = $ScriptPath"

Test-Path $ScriptPath

. $ScriptPath

Get-Command Get-Hello

Describe "Get-Hello" {

    It "Returns Hello" {

        Get-Hello | Should -Be "Hello"

    }

}