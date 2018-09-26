# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "C:\hqTestLite\src\hqTestLite.psm1" -Force

# Override global defaults with values specific to the test environment.
Invoke-Expression "\\netshare\Test\EnvironmentOverrides.ps1"

# Using global variables for -ProcessAgentPath, -DbServer, -DbName, and -BeyondComparePath.
# Leaving out directory params assuming SQL scripts are co-located with the test script. 
Test-MedmSolution `
    -SetupSqlFiles "MySolution_Setup.sql" `
    -SolutionName "MySolution" `
    -SolutionParams "Param1=Value:Param2=Value2:Param3=Value3" `
    -ResultSqlFiles "MySolution_Result1.sql,MySolution_Result2.sql" `
    -CleanupSqlFiles "MySolution_Cleanup.sql" `
    -TestResultPath "MySolution_TestResult.txt" `
    -CertifiedResultPath "MySolution_CertifiedResult.txt" `
