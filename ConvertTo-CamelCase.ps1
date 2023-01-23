function ConvertTo-CamelCase ([string]$Value) {
    $words = $Value -split '_'
    $output = ""
    foreach ($word in $words) {
        $output += $word[0].ToString().ToUpper() + ($word[1..($word.Length - 1)] -join '')
    }
    $output
}
