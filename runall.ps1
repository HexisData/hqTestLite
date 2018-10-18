param (
    $Path
)

If (!$Path) {
    Write-Host "To execute all .PS1 scripts in a directory with recursion, simply drag & drop `nthe directory on the +RUN ALL SCRIPTS shortcut. Feel free to copy the shortcut `nto any convenient location." 
}

Else {
    # Load & configure hqTestLite.
    Invoke-Expression "C:\hqTestLite\local_config.ps1"

    $GlobalNoInput = $NoInput
    $NoInput = $true

    # Run all scripts in child directories.
    $result = @()
    Get-Files -Path $Path -Include "\.ps1" | foreach { 
        "Running " + $_ | Out-Host
        $parent = Split-Path -Path $_ -Parent
        Set-Location -Path $parent
        $result += (& $_) 
    }
 
    $NoInput = $GlobalNoInput

    Write-Host "All scripts executed!"
}

[void](Read-Host "`nPress Enter to continue")