# hqTestLite
A PowerShell version of hqTest.

## Cmdlets

**Invoke-SqlScripts** &ndash; Executes an ordered list of SQL scripts located in the same directory. Optionally collects their outputs into a text file.

**Invoke-MedmSolution** &ndash; Executes a Markit EDM Solution. Optionally executes a set of SQL setup scripts prior to Solution execution and a set of cleanup scripts after Solution execution.

**Test-MedmSolution** &ndash; Tests a Markit EDM Solution by optionally running setup scripts, executing the Solution, running a set of result scripts and sending their output to a file, optionally running cleanup scripts, and then invoking BeyondCompare to display the dfference between the actual test result file and a previously staged certified result file.

## Cmdlet Syntax

### Invoke-SqlScripts

Executes an ordered list of SQL scripts located in the same directory. Optionally collects their outputs into a text file.

#### Syntax

```
Invoke-SqlScripts `
    -DbServer <string> `
    -DbName <string> `
    [-SqlDir <string>] `
    -SqlFiles <string> `
    [-ScriptType <string>] `
    [-OutputPath <string>]
```

#### Parameters

**-DbServer** &ndash; Required. The target SQL Server database server address. Ex: `-DbServer "nt7565"`

**-DbName** &ndash; Required. The target SQL Server database name. Ex: `-DbName "MARKITEDM_DEV_DX"`

**-SqlDir** &ndash; Optional. The directory containing the SQL scripts to be executed. If omitted, defaults to the current directory. Ex: `-SqlDir "C:\MySqlDir"`

**-SqlFiles** &ndash; Required. A comma-delimited list of SQL script files to be executed. All must be located within the directory indicated with *-SqlDir*. Ex: `-SqlFiles "MySqlFile1.sql,MySqlFile2.sql"`

**-OutputPath** &ndash; Optional. If set, indicates the text file to which all script outputs will be written. File will be overwritten if it exists. Ex: `-OutputPath "C:\MyOutputDir\MyOutputFile.txt"`

**-ScriptType** &ndash; Optional. Used to differentiate different script types with the *-Verbose* and *-WhatIf* flags. Default value: "Sql Script". Ex: `-ScriptType "Sql Script"` 

### Invoke-MedmSolution

Executes a Markit EDM Solution. Optionally executes a set of SQL setup scripts prior to Solution execution and a set of cleanup scripts after Solution execution.

#### Syntax

```
Invoke-MedmSolution `
    -ProcessAgentPath <string> `
    -DbServer <string> `
    -DbName <string> `
    [-SetupSqlDir <string>] `
    [-SetupSqlFiles <string>] `
    -SolutionName <string> `
    [-SolutionParams <string>] `
    [-CleanupSqlDir <string>] `
    [-CleanupSqlFiles <string>]
```

#### Parameters

**-ProcessAgentPath** &ndash; Required. Path to *CADISProcessAgent.exe* for target MEDM version. Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CADISProcessAgent.exe"`

**-DbServer** &ndash; Required. The target SQL Server database server address. Ex: `-DbServer "nt7565"`

**-DbName** &ndash; Required. The target SQL Server database name. Ex: `-DbName "MARKITEDM_DEV_DX"`

**-SetupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed prior to Solution invocation. If omitted, defaults to the current directory. Ex: `-SetupSqlDir "C:\MySetupSqlDir"`

**-SetupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed prior to Solution invocation. All must be located within the directory indicated with *-SetupSqlDir*. Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

**-SolutionName** &ndash; Required. The name of the MEDM Solution to be executed. Ex: `-SolutionName "My Solution"`

**-SolutionParams** &ndash; Optional. A delimited list of Solution parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". Ex: `-SolutionParams "param1=value1:param2=value2"`

**-CleanupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyCleanupSqlDir"`

**-CleanupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed following Solution invocation. All must be located within the directory indicated with *-CleanupSqlDir*. Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`

### Test-MedmSolution

Tests a Markit EDM Solution by optionally running setup scripts, executing the Solution, running a set of result scripts and sending their output to a file, optionally running cleanup scripts, and then invoking BeyondCompare to display the dfference between the actual test result file and a previously staged certified result file.

#### Syntax

```
Test-MedmSolution `
    -ProcessAgentPath <string> `
    -DbServer <string> `
    -DbName <string> `
    [-SetupSqlDir <string>] `
    [-SetupSqlFiles <string>] `
    -SolutionName <string> `
    [-SolutionParams <string>] `
    [-ResultSqlDir <string>] `
    -ResultSqlFiles <string>
    [-CleanupSqlDir <string>] `
    [-CleanupSqlFiles <string>] `
    -TestResultPath <string> `
    [-CertifiedResultPath <string>] `
    [-BeyondComparePath <string>]
```

#### Parameters

**-ProcessAgentPath** &ndash; Required. Path to *CADISProcessAgent.exe* for target MEDM version. Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CADISProcessAgent.exe"`

**-DbServer** &ndash; Required. The target SQL Server database server address. Ex: `-DbServer "nt7565"`

**-DbName** &ndash; Required. The target SQL Server database name. Ex: `-DbName "MARKITEDM_DEV_DX"`

**-SetupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed prior to Solution invocation. If omitted, defaults to the current directory. Ex: `-SetupSqlDir "C:\MySetupSqlDir"`

**-SetupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed prior to Solution invocation. All must be located within the directory indicated with *-SetupSqlDir*. Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

**-SolutionName** &ndash; Required. The name of the MEDM Solution to be executed. Ex: `-SolutionName "My Solution"`

**-SolutionParams** &ndash; Optional. A delimited list of Solution parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". Ex: `-SolutionParams "param1=value1:param2=value2"`

**-ResultSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation to extract test results. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyResultSqlDir"`

**-ResultSqlFiles** &ndash; Required. A comma-delimited list of SQL script files to be executed following Solution invocation to extract test results. All must be located within the directory indicated with *-ResultSqlDir*. Ex: `-ResultSqlFiles "MyResultSqlFile1.sql,MyResultSqlFile2.sql"`

**-CleanupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation and test result extraction. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyCleanupSqlDir"`

**-CleanupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed following Solution invocation and test result extraction. All must be located within the directory indicated with *-CleanupSqlDir*. Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`

**-TestResultPath** &ndash; Required. Indicates the text file to which all test result script outputs will be written. File will be overwritten if it exists. Ex: `-TestResultPath "C:\MyTestDir\MyTestResult.txt"`

**-CertifiedResultPath** &ndash; Optional. Indicates the text file against which the file indicated with *-TestResultPath* will be compared. If specified, BeyondCompare will be launched following test execution to compare the two files. Ex: `-CertifiedResultPath "C:\MyTestDir\MyCertifiedResult.txt"`

**-BeyondComparePath** &ndash; Optional. Path to the BeyondCompare executable. Default value: "C:\Program Files\Beyond Compare 4\BCompare.exe". Ex: `-BeyondComparePath "C:\Program Files\Beyond Compare 4\BCompare.exe"`




