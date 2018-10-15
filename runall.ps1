param (
    $Path
)

# Locate hqTestLite.
$ModuleDir = "\\paraport\resources\EnterpriseData\hqTestLite"

If (!$Path) {
    Write-Host "To execute all .PS1 scripts in a directory with recursion, simply drag & drop `nthe directory on the +RUN ALL SCRIPTS shortcut. Feel free to copy the shortcut `nto any convenient location." 
}

Else {
    # Load & configure hqTestLite.
    Import-Module "$ModuleDir\hqTestLite.psm1" -Force

    $NoInput = $Global:NoInput
    $Global:NoInput = $true

    # Run all scripts in child directories.
    $result = @()
    Get-Files -Path $Path -Include "\.ps1" | foreach { 
        "Running " + $_ | Out-Host
        $parent = Split-Path -Path $_ -Parent
        Set-Location -Path $parent
        $result += (& $_) 
    }
 
    $Global:NoInput = $NoInput

    Write-Host "All scripts executed!"
}

[void](Read-Host "`nPress Enter to continue")