# Self-elevating PS script: https://blogs.msdn.microsoft.com/virtual_pc_guy/2010/09/23/a-self-elevating-powershell-script/

# Get the ID and security principal of the current user account
$myWindowsID = [System.Security.Principal.WindowsIdentity]::GetCurrent()
$myWindowsPrincipal = new-object System.Security.Principal.WindowsPrincipal($myWindowsID)
 
# Get the security principal for the Administrator role
$adminRole = [System.Security.Principal.WindowsBuiltInRole]::Administrator
 
# Check to see if we are currently running "as Administrator"
if ($myWindowsPrincipal.IsInRole($adminRole))
{
    # We are running "as Administrator" - so change the title and background color to indicate this
    $Host.UI.RawUI.WindowTitle = $myInvocation.MyCommand.Definition + " (Elevated)"
    $Host.UI.RawUI.BackgroundColor = "DarkBlue"
    clear-host
}
else
{
    # We are not running "as Administrator" - so relaunch as administrator
   
    # Create a new process object that starts PowerShell
    $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
   
    # Specify the current script path and name as a parameter
    $newProcess.Arguments = $myInvocation.MyCommand.Definition;
   
    # Indicate that the process should be elevated
    $newProcess.Verb = "runas";
   
    # Start the new process
    [System.Diagnostics.Process]::Start($newProcess);
   
    # Exit from the current, unelevated, process
    exit
}

$ModuleDir = Split-Path $PSScriptRoot -Parent
$LocalConfigPath = "C:/hqTestLite/local_config.ps1"

# BEGIN
Write-Host "`nThank you for installing hqTestLite!"

# Check PS Version
Write-Host "`nChecking PowerShell version..."
Write-Host "Current PowerShell version: $($PSVersionTable.PSVersion.ToString())"

$MinPSVersion = 3
If ($PSVersionTable.PSVersion.Major -ge $MinPSVersion) {
    Write-Host "No change required."
}
Else {
	Write-Host "ERROR: hqTestLite requires Powershell version $MinPSVersion or better!" -ForegroundColor Yellow
	[void](Read-Host "`nPress Enter to exit")
	Exit
}	

# Check execution policy.
Write-Host "`nChecking execution policy..."
$CurrentExecutionPolicy = (Get-ExecutionPolicy).ToString()
Write-Host "Current Execution Policy: $CurrentExecutionPolicy"

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

function Is-Installed( $program ) {
    
    $x86 = ((Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    $x64 = ((Get-ChildItem "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall") |
        Where-Object { $_.GetValue( "DisplayName" ) -like "*$program*" } ).Length -gt 0;

    return $x86 -or $x64;
}

If (Is-Installed "WinMerge") {
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

If (Test-Path $LocalConfigPath -PathType Leaf) {
    Write-Host "$LocalConfigPath already exists!"
}
Else {
    Write-Host "Creating $LocalConfigPath..."
    Invoke-Expression "$ModuleDir\shared_config.ps1"
 
    Copy-Item -Path "$PSScriptRoot/../Local/hqTestLite" -Destination (Split-Path $LocalConfigPath -Parent) -Recurse
    (Get-Content $LocalConfigPath).replace("{{ModuleDir}}", $ModuleDir) | Set-Content $LocalConfigPath

    $NoInputStr = "`$" + ($(Read-UserEntry -Label "Suppress all user input for unattended testing?" -Default "N" -Pattern "Y|N") -eq "Y").ToString()
    (Get-Content $LocalConfigPath).replace("{{NoInput}}", $NoInputStr) | Set-Content $LocalConfigPath

    Write-Host "Done!"
}

# END
Write-Host "`nLocal hqTestLite installation complete!"
[void](Read-Host "`nPress Enter to exit")

