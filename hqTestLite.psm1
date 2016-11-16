$Global:DefaultMedmProcessAgentDir = "C:\Program Files\Markit Group\Markit EDM_10_5_3_1"
$Global:DefaultMedmProcessAgentExe = "CADISProcessAgent.exe"
$Global:DefaultMedmDbServer = "nt7565"
$Global:DefaultMedmDbName = "MARKITEDM_DEV_DX"
$Global:DefaultSqlScriptType = "Sql Script"
$Global:DefaultBeyondCompareDir = "C:\Program Files\Beyond Compare 4"
$Global:DefaultBeyondCompareExe = "BCompare.exe"

function Invoke-SqlScripts {
    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [Parameter(Mandatory = $True)]
        [string]$DbServer,

        [Parameter(Mandatory = $True)]
        [string]$DbName,

        [string]$SqlDir = $null,

        [Parameter(Mandatory = $True)]
        [string]$SqlFiles,

        [string]$ScriptType = $Global:DefaultSqlScriptType,

        [string]$OutputFile = $null
    )

    # Default $SqlDir to current location.
    if (-Not $SqlDir) {$SqlDir = Get-Location}

    # Iterate through $Sql list & execute each in turn.
    if ($SqlFiles) {
        "Beginning " + $ScriptType + " execution against database " + $DbServer + "\" + $DbName | Write-Verbose
        Push-Location
        if ($OutputFile) { "" | Out-File -FilePath $OutputFile }
        $SqlFiles.Split(",") | ForEach {
            $SqlPath = Join-Path -Path $SqlDir -ChildPath $_
            if ($PSCmdlet.ShouldProcess($ScriptType + " " + $_)) {
                if ($OutputFile) { 
                    "========== " + $_ + " ==========" | Out-File -FilePath $OutputFile -Append 
                    Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $SqlPath | Out-File -FilePath $OutputFile -Append
                }
                else { 
                    Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $SqlPath 
                }
            }
        }
        Pop-Location
        "Completed " + $ScriptType + " execution against database " + $DbServer + "\" + $DbName | Write-Verbose
    }
}

function Invoke-MedmSolution {

    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [string]$ProcessAgentDir = $Global:DefaultMedmProcessAgentDir,

        [string]$ProcessAgentExe = $Global:DefaultMedmProcessAgentExe,

        [string]$DbServer = $Global:DefaultMedmDbServer,

        [string]$DbName = $Global:DefaultMedmDbName,

        [Parameter(Mandatory = $True)]
        [string]$SolutionName,

        [string]$SolutionParams = $null,

        [string]$SetupSqlDir = $null,

        [string]$SetupSqlFiles = $null,

        [string]$CleanupSqlDir = $null,

        [string]$CleanupSqlFiles = $null
    )

    # Invoke setup scripts.
    Invoke-SqlScripts `
        -DbServer $DbServer `
        -DbName $DbName `
        -SqlDir $SetupSqlDir `
        -SqlFiles $SetupSqlFiles `
        -ScriptType "Setup Script"

    # Compose MEDM solution invocation.
    $ProcessAgentPath = Join-Path -Path $ProcessAgentDir -ChildPath $ProcessAgentExe
    $params = "/server:" + $DbServer
    $params = $params + " /db:" + $DbName
    $params = $params + " /integrated:yes"
    $params = $params + " /component:Solution"
    $params = $params + " /process:`"" + $SolutionName + "`""
    $params = $params + " /usedefaultforparams:yes"
    if ($SolutionParams) {$params = $params + " /parameters:`"" + $SolutionParams.Replace(":", "`":`"").Replace("=", "`"=`"") + "`""}

    # Execute MEDM solution.
    "Beginning execution of MEDM Solution `"" + $SolutionName + "`" on database " + $DbServer + "\" + $DbName | Write-Verbose  
    if ($PSCmdlet.ShouldProcess("MEDM Solution " + $SolutionName)) {
        & $ProcessAgentPath $params
    }
    "Completed execution of MEDM Solution `"" + $SolutionName + "`" on database " + $DbServer + "\" + $DbName | Write-Verbose  

    # Invoke cleanup scripts.
    if ($CleanupSqlFiles) {
        Invoke-SqlScripts `
            -DbServer $DbServer `
            -DbName $DbName `
            -SqlDir $CleanupSqlDir `
            -SqlFiles $CleanupSqlFiles `
            -ScriptType "Cleanup Script"
    }
}


function Test-MedmSolution {

    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [string]$ProcessAgentDir = $Global:DefaultMedmProcessAgentDir,

        [string]$ProcessAgentExe = $Global:DefaultMedmProcessAgentExe,

        [string]$DbServer = $Global:DefaultMedmDbServer,

        [string]$DbName = $Global:DefaultMedmDbName,

        [Parameter(Mandatory = $True)]
        [string]$SolutionName,

        [string]$SolutionParams = $null,

        [string]$SetupSqlDir = $null,

        [string]$SetupSqlFiles = $null,

        [Parameter(Mandatory = $True)]
        [string]$ResultSqlDir,

        [Parameter(Mandatory = $True)]
        [string]$ResultSqlFiles,

        [string]$CleanupSqlDir = $null,

        [string]$CleanupSqlFiles = $null,

        [string]$CertifiedResultFile = $null,

        [Parameter(Mandatory = $True)]
        [string]$ActualResultFile,

        [string]$BeyondCompareDir = $Global:DefaultBeyondCompareDir,

        [string]$BeyondCompareExe = $Global:DefaultBeyondCompareExe
    )

    # Invoke setup scripts and MEDM solution.
    Invoke-MedmSolution `
        -ProcessAgentDir $ProcessAgentDir `
        -ProcessAgentExe $ProcessAgentExe `
        -DbServer $DbServer `
        -DbName $DbName `
        -SolutionName $SolutionName `
        -SolutionParams $SolutionParams `
        -SetupSqlDir $SetupSqlDir `
        -SetupSqlFiles $SetupSqlFiles 

    # Invoke result scripts.
    "Beginning Result Query execution against database " + $DbServer + "\" + $DbName | Write-Verbose
    if ($PSCmdlet.ShouldProcess("Result Query")) {
        "" | Out-File -FilePath $ActualResultFile
        $ResultSqlFiles.Split(",") | ForEach {
            "========== " + $_ + " ==========" | Out-File -FilePath $ActualResultFile -Append
            $ResultSqlFile = Join-Path -Path $ResultSqlDir -ChildPath $_
            Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $ResultSqlFile | Out-File -FilePath $ActualResultFile -Append
        }
    }
    "Completed Result Query execution against database " + $DbServer + "\" + $DbName | Write-Verbose

    if ($CertifiedResultFile) {
        $BeyondComparePath = Join-Path -Path $BeyondCompareDir -ChildPath $BeyondCompareExe
        $params = "`"" + $CertifiedResultFile + "`" `"" + $ActualResultFile + "`" /readonly"

        "Displaying difference between certified & actual results." | Write-Verbose  
        if ($PSCmdlet.ShouldProcess("Beyond Compare")) {& $BeyondComparePath $params}
        else {"`"" + $BeyondComparePath + "`" " + $params | Out-Host}
    }

    # Invoke cleanup scripts.
    if ($CleanupSqlFiles) {
        Invoke-SqlScripts `
            -DbServer $DbServer `
            -DbName $DbName `
            -SqlDir $CleanupSqlDir `
            -SqlFiles $CleanupSqlFiles `
            -ScriptType "Cleanup Script"
    }
}

