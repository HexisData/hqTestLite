# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "C:\hqTestLite\src\hqTestLite.psm1" -Force

# Override global defaults with values specific to the test environment.
# Invoke-Expression "\\netshare\Test\EnvironmentOverrides.ps1"

# Using global variables for -ProcessAgentPath, -DbServer, -DbName, and -BeyondComparePath.
# Leaving out directory params assuming SQL scripts are co-located with the test script. 
Confirm-File `
    -FilePath "C:\hqTestLite\example\SampleResult.txt" `
    -CertifiedFilePath "C:\hqTestLite\example\SampleCertified.txt" `
    -TestName "TestName"
