# hqTestLite
A PowerShell version of hqTest. Currently only supports testing of Markit EDM Solutions.

## Contents

**hqTestLite.psm1** &ndash; hqTestLite PowerShell module.

**config.ps1** &ndash; Sample environment configuration script.

**SampleTest.ps1** &ndash; Sample test script.

**DB/hq.tvf_Core_Rows** &ndash; Utility UDF that generates a sequence of integers in a rowset.

**DB/hq.tvf_Core_Split_Delimiter** &ndash; Utility UDF that splits a delimited list into a rowset.

**DB/hq.usp_Core_DumpData** &ndash; Utility SP that dynamically extracts data from a table or view. Useful in result scripts as it can exclude columns by pattern and automatically pick up on object schema changes.

## Usage

### Test-MedmComponent and Test-MedmSolution
In this free, open source edition of hqTest, a test is expressed as a short PowerShell script that invokes the *Test-MedmSolution* or *Test-MedmComponent* cmdlet. This cmdlet performs the following tasks:

1. Optionally executes one or more SQL setup scripts against the target DB. Normally this step will be used to stage test data in cases where the process under test is consuming data in DB tables instead of a file.
1. Executes the target MEDM Solution with specified parameters.
1. Executes one or more result scripts against the target DB. Each script should produce a single rowset, so if more than one table must be evaluated there should be a result script for each. Result scripts are completely free form; any logic is valid so long as it produces a single rowset. Result scripts should be articulated in such as fashion as to produce a consistent result run over run, so they should leave out RunIds, update dates, and other data elements that change from one run to the next (unless the script logic normalizes them so they don't). All result script output is combined into a test result file.
1. Optionally executes one or more cleanup scripts, normally intended to restore the database to its pre-test state.
1. Optionally launches BeyondCompare to display the difference between the current test result file and some designated, previously certified test result file.

A typical test script will look something like this (see [SampleTest.ps1](example/SampleTest.ps1)):

### Publish-Results

For test automation and continuous integration scenarios, the *Publish-Results* will publish the test results in a standard test reporting format. Currently JUnit is the only supported format. For an example of *Publish-Results*, see [ReportTestResults.ps1](example/ReportTestResults.ps1).


### QuickStart

#### Locate the hqTestLite module in a central repository to make it easy to upgrade.

`Import-Module "\\netshare\hqTestLite.psm1" -Force`

#### Override global defaults with values specific to the test environment.

`Invoke-Expression "\\netshare\Test\config.ps1"`

#### Run this

Example below using global variables for -ProcessAgentPath, -DbServer, -DbName, and -BeyondComparePath. Leaving out directory params assuming SQL scripts are co-located with the test script. 

```powershell
Test-MedmSolution `
    -SetupSqlFiles "MySolution_Setup.sql" `
    -SolutionName "MySolution" `
    -SolutionParams "Param1=Value:Param2=Value2:Param3=Value3" `
    -ResultSqlFiles "MySolution_Result1.sql,MySolution_Result2.sql" `
    -CleanupSqlFiles "MySolution_Cleanup.sql" `
    -TestResultPath "MySolution_TestResult.txt" `
    -CertifiedResultPath "MySolution_CertifiedResult.txt" `
```

## Global Defaults

The hqTestLite module contains a number of global defaults intended to allow central control over common values. In practice, many of these values should be overridden on a per-environment basis as illustrated in [SampleTest.ps1](example/SampleTest.ps1). 

The following global variables may be overridden:

**$Global:DefaultMedmProcessAgentPath** &ndash; The local path to the MEDM Process Agent executable. This path will vary based on the MEDM version in use. Should be consistent across the team.

**$Global:DefaultMedmDbServer** &ndash; The current environment's SQL Server address.

**$Global:DefaultMedmDbName** &ndash; The current environment's SQL Server database name.

**$Global:DefaultBeyondComparePath** &ndash; The local path to the BeyondCompare executable. Should be consistent across the team.

**$Global:DefaultSqlScriptType** &ndash; The default script type token to use when *-Verbose* or *-WhatIf* are activated. Useful for troubleshooting.

**$Global:DefaultReportFolder** &ndash; The default location where *Publish-Results* will place test results reports

See [config.ps1](src/config.ps1) for a typical example of an environment configuration script.

## Cmdlets

**Invoke-SqlScripts** &ndash; Executes an ordered list of SQL scripts located in the same directory. Optionally collects their outputs into a text file.

**Invoke-MedmSolution** &ndash; Executes a Markit EDM Solution. Optionally executes a set of SQL setup scripts prior to Solution execution and a set of cleanup scripts after Solution execution.

**Test-MedmComponent** &ndash; Tests a Markit EDM Component (DataPorter, DataInspector, DataMatcherProcess, DataConstructor, or Solution) by optionally running setup scripts, executing the Component, optionally running a query and sending its output to a file, optionally running cleanup scripts, performing a diff, and optionally invoking BeyondCompare to display the difference between the actual test result file and previously certified result file.

**Test-MedmSolution** &ndash; A shortcut to *Test-MedmComponent* to run a Markit EDM Solution

**Publish-Results** &ndash; Produces a file containing the results of executed tests in standard test reporting formats. Currently supports JUnit.


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
    [-OutputPath <string>] `
    [-OutputTable]
```

#### Parameters

**-DbServer** &ndash; Required. The target SQL Server database server address. Ex: `-DbServer "MyDbServer"`

**-DbName** &ndash; Required. The target SQL Server database name. Ex: `-DbName "MyDb"`

**-SqlDir** &ndash; Optional. The directory containing the SQL scripts to be executed. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-SqlDir "C:\MySqlDir"`

**-SqlFiles** &ndash; Required. A comma-delimited list of SQL script files to be executed. All must be located within the directory indicated with *-SqlDir*. Ex: `-SqlFiles "MySqlFile1.sql,MySqlFile2.sql"`

**-OutputPath** &ndash; Optional. If set, indicates the text file to which all script outputs will be written. Relative paths will be resolved relative to the current directory. File will be overwritten if it exists. Ex: `-OutputPath "C:\MyOutputDir\MyOutputFile.txt"`

**-ScriptType** &ndash; Optional. Used to differentiate different script types with the *-Verbose* and *-WhatIf* flags. Defaults to the value of *$Global:DefaultSqlScriptType*. Ex: `-ScriptType "Sql Script"` 

**-OutputTable** &ndash; Switch. If present, causes output data to be formatted as a table. Otherwise output data is formatted as a list. Ex: `-OutputTable` 

### Invoke-MedmComponent

Executes a Markit EDM Component. Optionally executes a set of SQL setup scripts prior to Component execution, and a set of cleanup scripts after Component execution.

#### Syntax

```
Invoke-MedmComponent `
    [-ProcessAgentPath <string>] `
    [-DbServer <string>] `
    [-DbName <string>] `
    [-SetupSqlDir <string>] `
    [-SetupSqlFiles <string>] `
    -ComponentName <string>] `
    -ComponentType <string>] `
    [-ConfigurableParams <string>] `
    [-CleanupSqlDir <string>] `
    [-CleanupSqlFiles <string>] `
```

**-ProcessAgentPath** &ndash; Optional. Path to *CADISProcessAgent.exe* for target MEDM version. Defaults to the value of *$Global:DefaultMedmProcessAgentPath*. Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CADISProcessAgent.exe"`

**-DbServer** &ndash; Optional. Defaults to the value of *$Global:DefaultMedmProcessAgentPath*. The target SQL Server database server address. Defaults to the value of *$Global:DefaultMedmDbServer*. Ex: `-DbServer "MyDbServer"`

**-DbName** &ndash; Optional. The target SQL Server database name. Defaults to the value of *$Global:DefaultMedmDbName*. Ex: `-DbName "MyDb"`

**-SetupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed prior to Solution invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-SetupSqlDir "C:\MySetupSqlDir"`

**-SetupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed prior to Solution invocation. All must be located within the directory indicated with *-SetupSqlDir*. Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

**-ComponentName** &ndash; Required. The name of the MEDM Solution to be executed. Ex: `-SolutionName "My Solution"`

**-ComponentType** &ndash; Required. Supports "DataPorter", "DataInspector", "DataMatcherProcess", "DataConstructor", "Solution"

**-ConfigurableParams** &ndash; Optional. A delimited list of Solution parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". Ex: `-SolutionParams "param1=value1:param2=value2"`

**-CleanupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyCleanupSqlDir"`

**-CleanupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed following Solution invocation. All must be located within the directory indicated with *-CleanupSqlDir*. Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`


### Invoke-MedmSolution

A wrapper around `Invoke-MedmComponent`. Passes values through to and hard-codes `-ComponentType Solution`


### Test-MedmComponent

Tests a Markit EDM Component by optionally running setup scripts, executing the Component, running a set of result scripts and sending their output to a file, optionally running cleanup scripts, performing a diff, and then optionally BeyondCompare to display the dfference between the actual test result file and a previously staged certified result file.

Returns a test result object.

#### Syntax

```
Test-MedmSolution `
    [-ProcessAgentPath <string>] `
    [-DbServer <string>] `
    [-DbName <string>] `
    [-SetupSqlDir <string>] `
    [-SetupSqlFiles <string>] `
    -ComponentName <string> `
    -ComponentType <string> `
    [-ConfigurableParams <string>] `
    [-ResultSqlDir <string>] `
    [-ResultSqlFiles <string>] `
    [-CleanupSqlDir <string>] `
    [-CleanupSqlFiles <string>] `
    [-TestResultPath <string>] `
    [-CertifiedResultPath <string>] `
    [-BeyondComparePath <string>] `
    [-OutputTable] `
    [-SuppressDiffToolPopup] `
    [-TestName <string>]
```

#### Parameters

**-ProcessAgentPath** &ndash; Required. Path to *CADISProcessAgent.exe* for target MEDM version. Defaults to the value of *$Global:DefaultMedmProcessAgentPath*. Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CADISProcessAgent.exe"`

**-DbServer** &ndash; Required. The target SQL Server database server address. Defaults to the value of *$Global:DefaultMedmDbServer*. Ex: `-DbServer "MyDbServer"`

**-DbName** &ndash; Required. The target SQL Server database name. Defaults to the value of *$Global:DefaultMedmDbName*. Ex: `-DbName "MyDb"`

**-SetupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed prior to Solution invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-SetupSqlDir "C:\MySetupSqlDir"`

**-SetupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed prior to Solution invocation. All must be located within the directory indicated with *-SetupSqlDir*. Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

**-ComponentName** &ndash; Required. The name of the MEDM Component to be executed. Ex: `-ComponentName "My Component"`

**-ComponentType** &ndash; Required. Supports "DataPorter", "DataInspector", "DataMatcherProcess", "DataConstructor", "Solution"

**-ConfigurableParams** &ndash; Optional. A delimited list of Configurable Parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". Ex: `-ConfigurableParams "param1=value1:param2=value2"`

**-ResultSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation to extract test results. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyResultSqlDir"`

**-ResultSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed following Solution invocation to extract test results. All must be located within the directory indicated with *-ResultSqlDir*. Ex: `-ResultSqlFiles "MyResultSqlFile1.sql,MyResultSqlFile2.sql"`. If omitted, you are assuming that the Markit EDM Component that is under test will produce a file to validate as part of this test.

**-CleanupSqlDir** &ndash; Optional. A directory containing SQL scripts to be executed following Solution invocation and test result extraction. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. Ex: `-CleanupSqlDir "C:\MyCleanupSqlDir"`

**-CleanupSqlFiles** &ndash; Optional. A comma-delimited list of SQL script files to be executed following Solution invocation and test result extraction. All must be located within the directory indicated with *-CleanupSqlDir*. Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`

**-TestResultPath** &ndash; Required. Indicates the text file to which all test result script outputs will be written. Relative paths will be resolved relative to the current directory. File will be overwritten if it exists. Ex: `-TestResultPath "C:\MyTestDir\MyTestResult.txt"`

**-CertifiedResultPath** &ndash; Optional. Indicates the text file against which the file indicated with *-TestResultPath* will be compared. If specified, BeyondCompare will be launched following test execution to compare the two files. Relative paths will be resolved relative to the current directory. Ex: `-CertifiedResultPath "C:\MyTestDir\MyCertifiedResult.txt"`

**-BeyondComparePath** &ndash; Optional. Path to the BeyondCompare executable. Relative paths will be resolved relative to the current directory. Defaults to the value of *$Global:DefaultBeyondComparePath*. Ex: `-BeyondComparePath "C:\Program Files\Beyond Compare 4\BCompare.exe"`

**-OutputTable** &ndash; Switch. If present, causes output data to be formatted as a table. Otherwise output data is formatted as a list. Ex: `-OutputTable` 

**-SuppressDiffToolPopup** &ndash; Switch. If present, causes the cmdlet to skip the BeyondCompare popup. A diff is still performed, with results included in the return object. This switch is useful for test automation or continuous integration scenarios.

**-TestName** &ndash; Optional. If present, is included in the `Name` property of the return object.

#### Returns

An object with the following properties:

* Name &ndash; Contains the value passed in the `-TestName` argument
* Status &ndash; `PASSED` or `FAILED`
* Time &ndash; The execution time of the Markit EDM Component being tested
* Reason &ndash; if Status is `FAILED`, Reason will contain the diff results showing where the test result file is different from the certified file.

### Test-MedmSolution

A wrapper around `Test-MedmComponent`. Passes values through to and hard-codes `-ComponentType Solution`

### Publish-Results

Produces a report showing pass/fail status of tests in a standard test results reporting format. Currently supports JUnit.

#### Syntax
```
Publish-Results `
    [-ReportFolder <string>] `
    -TestSuiteName <string> `
    -Results <Object[]> `
    [-ReportFormat <string>]
```

#### Parameters

**-ReportFolder** &ndash; Optional. Points to the folder that should contain the generated report. If ommitted, defaults to `$Global:DefaultReportFolder`

**-TestSuiteName** &ndash; Required. The name of the test suite. Can be whatever string value you choose.

**-Results** &ndash; Required. An array containing test results objects returned from calls to `Test-MedmComponent` or `Test-MedmSolution`. See [ReportTestResult.ps1](example/ReportTestResults.ps1)

**-ReportFormat** &ndash; Optional. The desired report format. Defaults to "JUnit". 

#### Returns

A string value containing the path to the report file.
