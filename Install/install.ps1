function Is-Installed( $program ) {
    
    $x86 = ((Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    $x64 = ((Get-ChildItem "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    return $x86 -or $x64;
}


# BEGIN
Write-Host "`nThank you for installing hqTestLite!"

# Validate admin privileges.
Write-Host "`nValidating admin privileges..."
$RunningAsAdmin = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
If ($RunningAsAdmin) {
    Write-Host "You are running with admin privileges!"
}
Else {
    Write-Host "ERROR: This script must be run with admin priveleges."
    [void](Read-Host "`nPress Enter to exit")
    Exit
}

# Check execution policy.
Write-Host "`nChecking execution policy..."
$CurrentExecutionPolicy = (Get-ExecutionPolicy).ToString()
"Current Execution Policy: $CurrentExecutionPolicy"

If (("Unrestricted", "Bypass").Contains($CurrentExecutionPolicy)) {
    Write-Host "No change required."
}
Else {
    Write-Host "Setting Execution Policy to Unrestricted... " -NoNewline
    Set-ExecutionPolicy Unrestricted
    Write-Host "Done!"
}

# Check SqlServer module.
Write-Host "`nChecking SqlServer module..."

If (Get-Module -ListAvailable -Name "SqlServer") {
    Write-Host "SqlServer module is already installed!"
}
Else {
    Write-Host "Installing SqlServer module... " -NoNewline 
    Install-Module -Name SqlServer
    Write-Host "Done!"
}

# Check WinMerge installation.
Write-Host "`nChecking WinMerge installation..."

If ($false) { #Is-Installed "WinMerge") {
    Write-Host "WinMerge is already installed!"
}
Else {
    Write-Host "Installing WinMerge... " -NoNewline 
    $WinMergeExePath = "$PSScriptRoot\WinMerge-2.14.0-Setup.exe"
    $WinMergeExeParams = "/SILENT" # http://www.jrsoftware.org/ishelp/index.php?topic=setupcmdline
    & $WinMergeExePath $WinMergeExeParams | Write-Host
    Write-Host "Done!"
}

# Check local config file.
Write-Host "`nChecking local config file..."

$LocalConfigPath = "C:/hqTestLite/local_config.ps1"
If (Test-Path $LocalConfigPath -PathType Leaf) {
    Write-Host "$LocalConfigPath already exists!"
}
Else {
    Write-Host "Creating $LocalConfigPath..."
    Copy-Item -Path "$PSScriptRoot/../Local/hqTestLite" -Destination (Split-Path $LocalConfigPath -Parent) -Recurse
    Write-Host "Done!"
}

# END
Write-Host "`nLocal hqTestLite installation complete!"
[void](Read-Host "`nPress Enter to exit")

