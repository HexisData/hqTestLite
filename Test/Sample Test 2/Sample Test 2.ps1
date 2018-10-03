# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "\\paraport.com\resources\EnterpriseData\hqTestLite\hqTestLite.psm1" -Force

# Get -DbServer & -DbName for DEV environment.
Invoke-Expression "C:\hqTestLite\config.ps1"

# Test solution.
Test-MedmSolution `
    -SolutionName "PPA 4100 Master Security" `
    -SetupSqlDir "./SetupSql" `
    -SetupSqlFiles "T_PPA_BBO_EQUITY_FUND_SEC.sql,T_PPA_BBO_EQUITY_SEC.sql,T_PPA_OVERRIDE_SECURITY.sql,T_PPA_OVERRIDE_SECURITY_EXPIRY.sql" `
    -ResultSqlDir "./ResultSql" `
    -ResultSqlFiles "T_PPA_BBO_EQUITY_SEC.sql,T_PPA_BBO_EQUITY_FUND_SEC.sql,T_PPA_PREMASTER_SECURITY.sql,T_PPA_OVERRIDE_SECURITY.sql,T_PPA_OVERRIDE_SECURITY_EXPIRY.sql,T_PPA_MASTER_SECURITY.sql" `
    -CleanupSqlFiles "Cleanup.sql" `
    -OutputTable `
    -TestResultPath "Result.txt" `
    -CertifiedResultPath "Result.certified.txt"