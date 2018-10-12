# Override default shared settings here.

# $Global:DefaultLocalConfigPath = "C:\hqTestLite\local_config.ps1"
# $Global:DefaultMedmProcessAgentPath = "C:\Program Files\Markit Group\Markit EDM_17_1_132_0\CadisProcessAgent.exe"
# $Global:DefaultTextDiffExe = "C:\Program Files (x86)\WinMerge\WinMergeU.exe"
# $Global:DefaultTextDiffParams = @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{CurrentResult}", "{CertifiedResult}")
# $Global:DefaultSuppressTextDiffPopup = $false
# $Global:DefaultSqlScriptType = "Sql Script"
# $Global:DefaultReportFolder = "C:\hqTestLite\Results"

# Specify per-environment settings here.
switch ($Global:ActiveEnvironment) {
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

