function Get-GithubSummary {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory)]
        [string]
        $Repository,

        # Parameter help description
        [Parameter(Mandatory)]
        [string]
        $Token
    )

    $url = "https://api.github.com/repos/" + $Repository + "/issues"
    Write-Output "URL: $url"
    $encryptedToken = ConvertTo-SecureString -String $Token -AsPlainText

    Invoke-RestMethod -Token $encryptedToken -Method Get -Uri $url -Authentication Bearer

}
