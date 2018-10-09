# Locate the hqTestLite module in a central repository to make it easy to upgrade.
Import-Module "\\paraport\resources\EnterpriseData\hqTestLite\hqTestLite.psm1" -Force

# Get -DbServer & -DbName for DEV environment.
Invoke-Expression "C:\hqTestLite\config.ps1"

$DbServer = Read-UserEntry -Label "Database Server" -Default $Global:DefaultMedmDbServer
$DbName = Read-UserEntry -Label "Database Name" -Default $Global:DefaultMedmDbName
$TableSchema = Read-UserEntry -Label "Table Schema" -Default "dbo"
$TableName = Read-UserEntry -Label "Table Name"
$ColNamePattern = Read-UserEntry -Label "Column Name Exclusion Pattern" -Default "^CADIS_SYSTEM_|.*RUN_?ID" -Pattern ".*"
$CsvPath = Read-UserEntry -Label "CSV Output Path" -Default "Test.csv"
$RowCount = Read-UserEntry -Label "Row Count" -Default "10" -Pattern "\d+"
$MinDate = Read-UserEntry -Label "Min Date" -Default "2018-01-01 00:00:00" -Pattern "\d{4}-\d{2}-\d{2}( \d{2}:\d{2}(:\d{2})?)?"
$MaxDate = Read-UserEntry -Label "Min Date" -Default "2027-12-31 23:59:59" -Pattern "\d{4}-\d{2}-\d{2}( \d{2}:\d{2}(:\d{2})?)?"
$MinDec = Read-UserEntry -Label "Min Decimal" -Default "0.0" -Pattern "\d+(\.\d*)?"
$MaxDec = Read-UserEntry -Label "Max Decimal" -Default "10.0" -Pattern "\d+(\.\d*)?"
$MinInt = Read-UserEntry -Label "Min Integer" -Default "1000" -Pattern "\d+"
$MaxInt = Read-UserEntry -Label "Max Integer" -Default "9999" -Pattern "\d+"
$MaxStrLen = Read-UserEntry -Label "Max String Length" -Default "32" -Pattern "\d+"

Export-CsvTestData `
    -DbServer $DbServer `
    -DbName $Global:DefaultMedmDbName `
    -TableSchema $TableSchema `
    -TableName $TableName `
    -ColNameAction Exclude `
    -ColNamePattern $ColNamePattern `
    -CsvPath $CsvPath `
    -RowCount ([int]$RowCount) `
    -MinDate ([datetime]::ParseExact($MinDate, "yyyy-MM-dd HH:mm:ss", $null)) `
    -MaxDate ([datetime]::ParseExact($MaxDate, "yyyy-MM-dd HH:mm:ss", $null)) `
    -MinDec ([decimal]$MinDec) `
    -MaxDec ([decimal]$MaxDec) `
    -MinInt ([int]$MinInt) `
    -MaxInt ([int]$MaxInt) `
    -MaxStrLen ([int]$MaxStrLen)

