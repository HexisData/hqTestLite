$Global:DefaultMedmProcessAgentPath = "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CadisProcessAgent.exe"
$Global:DefaultMedmDbServer = "MyMedmDbServer"
$Global:DefaultMedmDbName = "MyMedmDb"
$Global:DefaultBeyondComparePath = "C:\Program Files\Beyond Compare 4\BCompare.exe"
$Global:DefaultSqlScriptType = "Sql Script"
$Global:DefaultReportFolder = "C:\tmp"

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

        [string]$OutputPath = $null,

        [string]$ScriptType = $Global:DefaultSqlScriptType,

		[switch]$OutputTable
    )

    # Default $SqlDir to current location.
    if (-Not $SqlDir) {$SqlDir = Get-Location}

    # Iterate through $Sql list & execute each in turn.
    if ($SqlFiles) {
        "Beginning $($ScriptType) execution against database $($DbServer)\$($DbName)" | Write-Verbose
        Push-Location
        if ($OutputPath) { "" | Out-File -FilePath $OutputPath }
        $SqlFiles.Split(",") | ForEach {
            $SqlPath = Join-Path -Path $SqlDir -ChildPath $_
            if ($PSCmdlet.ShouldProcess("$($ScriptType) $($_)")) {
                if ($OutputPath) { 
                    "========== $($_) ==========" | Out-File -FilePath $OutputPath -Append 
					if ($OutputTable) {
						Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $SqlPath | Format-Table -AutoSize -Wrap | Out-File -FilePath $OutputPath -Append
					}
					else {
						Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $SqlPath | Format-List | Out-File -FilePath $OutputPath -Append
					}
                }
                else { 
                    Invoke-Sqlcmd -ServerInstance $DbServer -Database $DbName -InputFile $SqlPath 
                }
            }
        }
        Pop-Location
        "Completed $($ScriptType) execution against database $($DbServer)\$($DbName)" | Write-Verbose
    }
}

function Invoke-MedmSolution {

    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [string]$ProcessAgentPath = $Global:DefaultMedmProcessAgentPath,

        [string]$DbServer = $Global:DefaultMedmDbServer,

        [string]$DbName = $Global:DefaultMedmDbName,

        [string]$SetupSqlDir = $null,

        [string]$SetupSqlFiles = $null,

        [Parameter(Mandatory = $True)]
        [string]$SolutionName,

        [string]$SolutionParams = $null,

        [string]$CleanupSqlDir = $null,

        [string]$CleanupSqlFiles = $null
    )

	Invoke-MedmComponent `
		-ProcessAgentPath $ProcessAgentPath `
		-DbServer $DbServer `
		-DbName $DbName `
		-SetupSqlDir $SetupSqlDir `
		-SetupSqlFiles $SetupSqlFiles `
		-ComponentType Solution `
		-ComponentName $SolutionName `
		-ConfigurableParams $SolutionParams `
		-CleanupSqlDir $CleanupSqlDir `
		-CleanupSqlFiles $CleanupSqlFiles

}

function Invoke-MedmComponent {
	    Param(
        [string]$ProcessAgentPath = $Global:DefaultMedmProcessAgentPath,

        [string]$DbServer = $Global:DefaultMedmDbServer,

        [string]$DbName = $Global:DefaultMedmDbName,

        [string]$SetupSqlDir = $null,

        [string]$SetupSqlFiles = $null,

        [Parameter(Mandatory = $True)]
        [string]$ComponentName,

		[Parameter(Mandatory = $True)]
		[ValidateSet("DataPorter", "DataInspector", "DataMatcherProcess", "DataConstructor", "Solution")]
		[string]$ComponentType,

        [string]$ConfigurableParams = $null,

        [string]$CleanupSqlDir = $null,

        [string]$CleanupSqlFiles = $null
    )
	
	# Invoke setup scripts.
    if ($SetupSqlFiles) {
        Invoke-SqlScripts `
            -DbServer $DbServer `
            -DbName $DbName `
            -SqlDir $SetupSqlDir `
            -SqlFiles $SetupSqlFiles `
            -ScriptType "Setup Script"
    }

	# Compose MEDM component invocation.
    $params = "/server:$($DbServer) /db:$($DbName) /integrated:yes /component:$($ComponentType) /process:`"$($ComponentName)`" /usedefaultforparams:yes"
    if ($SolutionParams) {$params = $params + " /parameters:`"" + $SolutionParams.Replace(":", "`":`"").Replace("=", "`"=`"") + "`""}

	# Execute MEDM solution.
    "Beginning execution of MEDM Solution `"$($SolutionName)`" on database $($DbServer)\$($DbName)" | Write-Verbose  
    if ($PSCmdlet.ShouldProcess("MEDM Solution $($SolutionName)")) {& $ProcessAgentPath $params}
    "Completed execution of MEDM Solution `"$($SolutionName)`" on database $($DbServer)\$($DbName)" | Write-Verbose  

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

function Test-MedmComponent {

    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [string]$ProcessAgentPath = $Global:DefaultMedmProcessAgentPath,
		[string]$DbServer = $Global:DefaultMedmDbServer,
		[string]$DbName = $Global:DefaultMedmDbName,
		[string]$SetupSqlDir = $null,
		[string]$SetupSqlFiles = $null,
		[Parameter(Mandatory = $True)]
        [string]$ComponentName,
		[Parameter(Mandatory = $True)]
		[ValidateSet("DataPorter", "DataInspector", "DataMatcherProcess", "DataConstructor", "Solution")]
		[string]$ComponentType,
		[string]$ConfigurableParams = $null,
		[string]$ResultSqlDir,
		#[Parameter(Mandatory = $True)]
        [string]$ResultSqlFiles,
		[string]$CleanupSqlDir = $null,
		[string]$CleanupSqlFiles = $null,
		[Parameter(Mandatory = $True)]
        [string]$TestResultPath,
		[string]$CertifiedResultPath = $null,
		[string]$BeyondComparePath = $Global:DefaultBeyondComparePath,
		[switch]$OutputTable,
		[switch]$SuppressDiffToolPopup,
		[string]$TestName
    )
	$stopWatch = [Diagnostics.Stopwatch]::StartNew()

    # Invoke setup scripts and MEDM component.
    Invoke-MedmComponent `
        -ProcessAgentPath $ProcessAgentPath `
        -DbServer $DbServer `
        -DbName $DbName `
		-ComponentType $ComponentType `
        -ComponentName $ComponentName `
        -ConfigurableParams $ConfigurableParams `
        -SetupSqlDir $SetupSqlDir `
        -SetupSqlFiles $SetupSqlFiles `
	| Write-Host

    # Invoke result scripts.
	if ($ResultSqlFiles) {
		Invoke-SqlScripts `
			-DbServer $DbServer `
			-DbName $DbName `
			-SqlDir $ResultSqlDir `
			-SqlFiles $ResultSqlFiles `
			-ScriptType "Result Query" `
			-OutputPath $TestResultPath `
			-OutputTable:$OutputTable
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

	$stopWatch.Stop()

    if (-not($SuppressDiffToolPopup.IsPresent) -and $CertifiedResultPath) {
        $params = "`"$($TestResultPath)`" `"$($CertifiedResultPath)`" /readonly"

        "Displaying difference between actual & certified results." | Write-Verbose  
        if ($PSCmdlet.ShouldProcess("Beyond Compare")) {& $BeyondComparePath $params}
        else {"`"$($BeyondComparePath)`" $($params)" | Out-Host}
    }

	# get diff to produce test results
	if ($CertifiedResultPath) {
		$diff = Compare-Object (Get-Content $CertifiedResultPath) (Get-Content $TestResultPath)
		$result = @{
			Status = %{if (0 -eq $diff.Count) {"PASSED"} else {"FAILED"}}
			Time = $stopWatch.Elapsed.TotalMilliseconds
			Name = $TestName
		}
		if ($result.Status -eq "FAILED") {
			$result.Reason = ($diff | %{"$($_.SideIndicator)  $($_.InputObject)"}) -join "\r\n"
		}
		return New-Object PSObject -Property $result
	}
}


function Test-MedmSolution {

    [CmdletBinding(SupportsShouldProcess = $True, PositionalBinding = $False)]

    Param(
        [string]$ProcessAgentPath = $Global:DefaultMedmProcessAgentPath,
        [string]$DbServer = $Global:DefaultMedmDbServer,
        [string]$DbName = $Global:DefaultMedmDbName,
        [string]$SetupSqlDir = $null,
        [string]$SetupSqlFiles = $null,
        [Parameter(Mandatory = $True)]
        [string]$SolutionName,
        [string]$SolutionParams = $null,
        [string]$ResultSqlDir,
        #[Parameter(Mandatory = $True)]
        [string]$ResultSqlFiles,
        [string]$CleanupSqlDir = $null,
        [string]$CleanupSqlFiles = $null,
        [Parameter(Mandatory = $True)]
        [string]$TestResultPath,
        [string]$CertifiedResultPath = $null,
        [string]$BeyondComparePath = $Global:DefaultBeyondComparePath,
		[switch]$OutputTable,
		[switch]$SuppressDiffToolPopup
    )

	Test-MedmComponent `
		-ProcessAgentPath $ProcessAgentPath `
		-DbServer $DbServer `
		-DbName $DbName `
		-SetupSqlDir $SetupSqlDir `
		-SetupSqlFiles $SetupSqlFiles `
		-ComponentName $SolutionName `
		-ComponentType Solution `
		-ConfigurableParams $SolutionParams `
		-ResultSqlDir $ResultSqlDir `
		-ResultSqlFiles $ResultSqlFiles `
		-CleanupSqlDir $CleanupSqlDir `
		-CleanupSqlFiles $CleanupSqlFiles `
		-TestResultPath $TestResultPath `
		-CertifiedResultPath $CertifiedResultPath `
		-BeyondComparePath $BeyondComparePath `
		-OutputTable:$OutputTable.IsPresent `
		-SuppressDiffToolPopup:$SuppressDiffToolPopup.IsPresent
}

function Publish-Results {
	Param(
		[string]$ReportFolder = $Global:DefaultReportFolder,
		[Parameter(Mandatory = $True)]
		[string]$TestSuiteName,
		[Parameter(Mandatory = $True)]
		[Object[]]$Results,
		[ValidateSet("JUnit")]
		[string]$ReportFormat = "JUnit"
	)

	if ($ReportFormat -eq "JUnit") {
		$template = @'
<testsuite name="" tests="" failures="" timestamp="" time="" package="hqTestLite">
<testcase classname="" name="" time="">
    <failure type="" message=""/>
</testcase>
</testsuite>
'@

		# load XML template 
		$xml = New-Object xml		
		$xml.LoadXml($template)
		$newTestCaseTemplate = (@($xml.testsuite.testcase)[0]).Clone()  

		# populate suite-level attributes
		$xml.testsuite.name = $TestSuiteName
		$xml.testsuite.tests = $Results.Count.ToString()
		$xml.testsuite.timestamp = (Get-Date -Format u).ToString()
		$totalTime = ($Results | Measure-Object -Property Time -Sum).Sum
		$xml.testsuite.time = [TimeSpan]::FromMilliseconds($totalTime).ToString("c")
		$xml.testsuite.failures = ($Results | Where-Object {$_.Status -eq "FAILED"} | Measure-Object).Count.ToString()

		# populate test-level attributes
		foreach($result in $Results) 
		{   
		    $newTestCase = $newTestCaseTemplate.clone()
		    $newTestCase.classname = $TestSuiteName
		    $newTestCase.name = $result.Name.ToString()
		    $newTestCase.time = [TimeSpan]::FromMilliseconds($result.Time).ToString("c")
		    if($result.Status -eq "PASSED")
		    {   #Remove the failure node, since this is a success
		        $newTestCase.RemoveChild($newTestCase.ChildNodes[0]) | Out-Null
		    }
		    else
		    {
				$newTestCase.failure.type = "hqTestLite.Fail"
				#$newTestCase.failure.InnerText = Format-ErrorRecord $result.Reason
		        $newTestCase.failure.message = $result.Reason 
		    }
		    $xml.testsuite.AppendChild($newTestCase) > $null
		}   

		# remove test case template
		$xml.testsuite.testcase | Where-Object { $_.Name -eq "" } | ForEach-Object  { [void]$xml.testsuite.RemoveChild($_) }

		# save xml to file
		$path = "$($ReportFolder)\$($TestSuiteName).xml"
		$xml.Save($path)

		return $path
	}
}
