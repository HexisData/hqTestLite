Clear-Host
Import-Module "$($PSScriptRoot)\..\src\hqTestLite.psm1" -Force

# note to use this example, you will need to replace values in the following two lines, as well as change the value of -ComponentName and -TestResultPath
$Global:DefaultMedmDbServer = "DbServer"
$Global:DefaultMedmDbName = "DbName"

# an array to hold test results that get returned from calls to Test-* methods
$results = @()

# test 1 is expected to fail
$results += Test-MedmComponent `
	-ComponentName "exporting null values" `
	-ComponentType DataPorter `
	-TestResultPath "c:\tmp\tester.txt" `
	-CertifiedResultPath "$($PSScriptRoot)\certified.txt" `
	-SuppressDiffToolPopup `
	-TestName "Test-001"

# test 2 is expected to pass
$results += Test-MedmComponent `
	-ComponentName "exporting null values" `
	-ComponentType DataPorter `
	-TestResultPath "$($PSScriptRoot)\certified.txt" `
	-CertifiedResultPath "$($PSScriptRoot)\certified.txt" `
	-SuppressDiffToolPopup `
	-TestName "Test-002"

# test 3 is expected to fail
$results += Test-MedmComponent `
	-ComponentName "exporting null values" `
	-ComponentType DataPorter `
	-TestResultPath "c:\tmp\tester.txt" `
	-CertifiedResultPath "$($PSScriptRoot)\certified.txt" `
	-SuppressDiffToolPopup `
	-TestName "Test-003"

# this call creates a report file. JUnit is the default format
Publish-Results `
	-TestSuiteName "Suite-001" `
	-Results $results

# display the report file in the console for our review
Get-Content "C:\tmp\Suite-001.xml"
