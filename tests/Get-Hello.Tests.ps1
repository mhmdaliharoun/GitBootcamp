Import-Module "$PSScriptRoot/../scripts/Get-Hello.ps1"

Describe "Get-Hello" {

    It "Returns Hello" {

        Get-Hello | Should -Be "Hello"

    }

}