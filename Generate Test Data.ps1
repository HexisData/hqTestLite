# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "\\paraport.com\resources\EnterpriseData\hqTestLite\hqTestLite.psm1" -Force

# Get -DbServer & -DbName for DEV environment.
Invoke-Expression "C:\hqTestLite\config.ps1"

Export-CsvTestData `
    -TableName "T_PPA_MASTER_SECURITY" `
    -CsvPath "Test.csv"

