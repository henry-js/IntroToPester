BeforeAll {
    $file = $PSCommandPath.Replace(".Unit.Tests", "")
    . $file
}

Describe 'ConvertTo-CamelCase' {
    It "Converts from name to Name" {
        ConvertTo-CamelCase "name" | Should -Be "Name"
    }
    It "Converts from full_name to FullName" {
        ConvertTo-CamelCase "full_name" | Should -Be "FullName"
    }
}
