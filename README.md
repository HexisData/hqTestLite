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
