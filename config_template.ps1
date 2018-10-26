# Pull global variables from Windows Registry.
$RegistryPath = "HKCU:\Software\HexisData\hqTestLite"
Get-Item -Path $RegistryPath | Select-Object -ExpandProperty Property | ForEach-Object {
    $PropertyName = $_
    switch -Wildcard ($(Get-ItemPropertyValue -Path $RegistryPath -Name $PropertyName).GetType()) {
        "byte*" {
            $PropertyValue = [bool](Get-ItemPropertyValue -Path $RegistryPath -Name $PropertyName)
        }

        default {
            $PropertyValue = Get-ItemPropertyValue -Path $RegistryPath -Name $PropertyName
        }
    }
    Set-Variable -Name $PropertyName -Value $PropertyValue -Scope Global
}

# Set global variables not populated in Windows Registry.

# MEDM installation path.
If (!$DefaultMedmProcessAgentPath) { $Global:DefaultMedmProcessAgentPath = "C:\Program Files\Markit Group\Markit EDM_17_1_132_0\CadisProcessAgent.exe" }

# WinMerge command line config.
If (!$DefaultTextDiffExe) { $Global:DefaultTextDiffExe = "C:\Program Files (x86)\WinMerge\WinMergeU.exe" }
If (!$DefaultTextDiffParams) { $Global:DefaultTextDiffParams = @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{{CurrentResult}}", "{{CertifiedResult}}") }

# Don't suppress the text diff engine by default.
If (!$DefaultSuppressTextDiffPopup) { $Global:DefaultSuppressTextDiffPopup = $false }

# Default script type for results reporting.
If (!$DefaultSqlScriptType) { $Global:DefaultSqlScriptType = "Sql Script" }

# Default directory for report files..
If (!$DefaultReportFolder) { $Global:DefaultReportFolder = "C:\hqTestLite\Results" }

# Execute tests with user input by default.
If (!$NoInput) { $Global:NoInput = $false }

# Active Environment.
If (!$ActiveEnvironment) { $Global:ActiveEnvironment = "DEV" }

# Specify per-environment settings here.
switch ($ActiveEnvironment) {
    "DEV" {
        $Global:EnvMedmDbServer = "DevServerName"
        $Global:EnvMedmDbName = "DevDbName"
        $Global:EnvBbgPxFileInDir = "\\netshare\DEV\bbg\price\IN"
        $Global:EnvBbgSecFileInDir = "\\netshare\DEV\bbg\security\IN"
        break
    }

    "TEST" {
        $Global:EnvMedmDbServer = "TestServerName"
        $Global:EnvMedmDbName = "TestDbName"
        $Global:EnvBbgPxFileInDir = "\\netshare\TEST\bbg\price\IN"
        $Global:EnvBbgSecFileInDir = "\\netshare\TEST\bbg\security\IN"
        break
    }

    default {
        throw "Unknown environment!"
    }
}

# Import hqTestLite module.
Import-Module "$ModuleDir\hqTestLite.psm1" -NoClobber
