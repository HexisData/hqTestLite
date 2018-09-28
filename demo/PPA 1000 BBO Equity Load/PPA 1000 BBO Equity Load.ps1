# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "C:\hqTestLite\src\hqTestLite.psm1" -Force

# Get -DbServer & -DbName for DEV environment.
Invoke-Expression "C:\hqTestLite\demo\config.ps1"

# Copy test file to input directory.
Copy-Item -Path "equity_namr.dif.20180917" -Destination "\\sea-700-09.paraport.com\EnterpriseData\MarkitEDM\MarkitEDM_DEV\BBO\SECURITY\IN"

# Leaving out directory params assuming SQL scripts are co-located with the test script.
# No setup SQL since we dropped a file. 
# No cleanup SQL, just to keep things simple.
# No Solution parameters.
Test-MedmSolution `
    -SolutionName "PPA 1000 BBO Equity Load" `
    -ResultSqlFiles "T_PPA_FILE_MONITOR.sql,T_PPA_PROCESS_MONITOR.sql,T_PPA_EXCEPTION_LOAD.sql,T_PPA_BBO_EQUITY_SEC.sql" `
    -OutputTable `
    -TestResultPath "Result.txt" `
    -CertifiedResultPath "Result.certified.txt"