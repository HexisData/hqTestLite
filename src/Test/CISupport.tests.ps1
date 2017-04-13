Import-Module "$($PSScriptRoot)\..\hqTestLite.psm1" -Force

Describe "CISupportTests" {
	Context "Exists" {
		Remove-Item "$($Global:DefaultReportFolder)\Suite*.xml"

		$Global:DefaultMedmProcessAgentPath = "whoami"

		It "does not overwrite file if both files are part of same Test Suite" {
			$result = New-Object PSObject -Property @{
				Status = "PASSED"
				Time = 0
				Name = "tester"
			}
			$results = @($result)
			

			
			Publish-Results -Results $results -TestSuiteName "Suite1"
			Publish-Results -Results $results -TestSuiteName "Suite1"
			Publish-Results -Results $results -TestSuiteName "Suite1"
			Publish-Results -Results $results -TestSuiteName "Suite2"

			$file1Exists = Test-Path "$($Global:DefaultReportFolder)\Suite1.xml"
			$file2Exists = Test-Path "$($Global:DefaultReportFolder)\Suite1_1.xml"
			$file3Exists = Test-Path "$($Global:DefaultReportFolder)\Suite1_2.xml"
			$file4Exists = Test-Path "$($Global:DefaultReportFolder)\Suite2.xml"

			$file1Exists | Should Be $true
			$file2Exists | Should Be $true
			$file3Exists | Should Be $true
			$file4Exists | Should Be $true

		}
	}
}