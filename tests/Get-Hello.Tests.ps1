# Dot-source the script to load its functions into the current scope
. "$PSScriptRoot/../scripts/Get-Hello.ps1"

Describe "Get-Hello" {
    It "Returns Hello" {
        Get-Hello | Should -Be "Hello"
    }
}