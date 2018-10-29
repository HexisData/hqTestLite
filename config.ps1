# Pull global variables from Windows Registry.
$RegistryPath = "HKCU:\Software\HexisData\hqTestLite"
Get-Item -Path $RegistryPath | Select-Object -ExpandProperty Property | foreach {
    $PropertyName = $_

    If (Test-Path "variable:global:$PropertyName") { return }

    switch -Wildcard ($(Get-ItemPropertyValue -Path $RegistryPath -Name $PropertyName).GetType().Name) {
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
If (!(Test-Path "variable:global:MedmProcessAgentPath")) { $Global:MedmProcessAgentPath = "C:\Program Files\Markit Group\Markit EDM_17_1_132_0\CadisProcessAgent.exe" }

# WinMerge command line config.
If (!(Test-Path "variable:global:TextDiffExe")) { $Global:TextDiffExe = "C:\Program Files (x86)\WinMerge\WinMergeU.exe" }
If (!(Test-Path "variable:global:TextDiffParams")) { $Global:TextDiffParams = @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{{CurrentResult}}", "{{CertifiedResult}}") }

# Default script type for results reporting.
If (!(Test-Path "variable:global:SqlScriptType")) { $Global:SqlScriptType = "Sql Script" }

# Default directory for report files..
If (!(Test-Path "variable:global:ReportFolder")) { $Global:ReportFolder = "C:\hqTestLite\Results" }

# Execute tests with user input by default.
If (!(Test-Path "variable:global:NoInput")) { $Global:NoInput = $false }

# Active Environment.
If (!(Test-Path "variable:global:ActiveEnvironment")) { $Global:ActiveEnvironment = "DEV" }

# Specify per-environment settings here.
switch ($Global:ActiveEnvironment) {
    "DEV" {
        # Database.
        $Global:EnvMedmDbServer = "markitedmdevdb.eatonvance.com"
        $Global:EnvMedmDbName = "MarkitEDM"

        # BBO file drop locations.
        $Global:EnvBboPxFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_DEV\BBO\PRICE\IN"
        $Global:EnvBboSecFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_DEV\BBO\SECURITY\IN"
		
		# GICS file drop locations.
        $Global:EnvGicsFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_DEV\BBO\GICS\IN"

        # BPS file drop locations.
        $Global:EnvBpsFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_DEV\BBO\PER_SECURITY\IN"

        # RIMES file drop locations.
        $Global:EnvRimesFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_DEV\RIMES\IN"
        break
    }

    "TMP" {
        # Database.
        $Global:EnvMedmDbServer = "markitedmdevdb.eatonvance.com"
        $Global:EnvMedmDbName = "MarkitEDM_TMP"

        # BBO file drop locations.
        $Global:EnvBboPxFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_UAT\BBO\PRICE\IN"
        $Global:EnvBboSecFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_UAT\BBO\SECURITY\IN"
		
		# GICS file drop locations.
        $Global:EnvGicsFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_UAT\BBO\GICS\IN"
		
        # BPS file drop locations.
        $Global:EnvBpsFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_UAT\BBO\PER_SECURITY\IN"

        # RIMES file drop locations.
        $Global:EnvRimesFileInDir = "\\paraport\resources\EnterpriseData\MarkitEDM\MarkitEDM_UAT\RIMES\IN"
        break
    }

    default {
        throw "Unknown environment!"
    }
}

# Import hqTestLite module.
Import-Module "$ModuleDir\hqTestLite.psm1" -NoClobber
