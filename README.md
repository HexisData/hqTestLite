# hqTestLite
**hqTestLite** is an open-source, PowerShell-based testing framework. It is designed to automate the testing of complex systems (like [Enterprise Data Management](https://en.wikipedia.org/wiki/Enterprise_data_management) systems) that normally resist efficient test automation.

**hqTestLite** currently supports the [Markit Enterprise Data Management](https://ihsmarkit.com/products/edm.html) platform, but can easily be adapted to support testing of any platform of any kind that meets the following prerequisites:
  * It can be invoked from the Windows command line.
  * It can be induced to produce test output either via a text file or a query against a SQL Server database.

Other features:

* Tests are expressed as short PowerShell scripts, which live in your version control repository and travel with your code. 
* Tests can be shared and executed across an entire development team and in multiple environments.
* Test results are output as simple text files. Once a test result is *certified*, any difference against the certified result indicates a test failure.
* Test failure optionally invokes a text comparison engine ([WinMerge](http://winmerge.org/), by default) to visualize the diff as a *very* useful troubleshooting aid.
* Tests can be invoked from other scripts and test results can be piped to other processes to support automated regression testing and continuous delivery.

## Getting Started

First thing is to get hqTestLite installed. If it is already in use in your organization, some of this may already be done. Do that parts that are not.

1. Clone this repository into a shared directory that is accessible to your whole development team.
1. Run the scripts in the [*DB*](https://github.com/HexisData/hqTestLite/tree/parametric/DB) directory in the order indicated, in every DB environment where you will be performing tests. If the object names don't work with your DB object naming convention, you can change them as long as you propagate the changes through the code. Note that the *Dump_Data* stored procedure will be called by most of your test result scripts, so be sure to propagate any changes there as well!
1. Copy the [*Test*](https://github.com/HexisData/hqTestLite/tree/parametric/Test) directory into an appropriate location in your version control system. Best guidance is that your tests should live right alongside your code, because they ARE code!
1. From the [*Local*](https://github.com/HexisData/hqTestLite/tree/parametric/Local) directory, copy the *hqTestLite* folder into the root of your C: drive. *This is important!* Your test scripts will be looking for the *config.ps1* configuration script in this directory, and it must be in the same local location for each user!

Now you are ready to run a test.

1. Clone a code repository containing tests to your local machine and find the *Test* directory. Navigate into one of the test folders and open a test script: it should be obvious what is going to be tested. Now right-click on the test script file and select *Run with  PowerShell*. 
1. Once text execution completes, find file *Result.txt* in the test directory. Open the file and scrutinize the test result. Is it what it should be?
1. If the test result is correct, open the main **hqTestLite** repository and drag and drop your *Result.txt* file onto the *CERTIFY* shortcut you find there. The invoked PowerShell script will copy your *Result.txt* file into *Result.certified.txt* in the same location. 
1. Now make a code change to the process under test and run the test again. If the newly generated *Result.txt* file differs from the certified version in any way, an instance of WinMerge will open, displaying the files side-by-side, so you can visualize the diff and zero in on precisely what broke.
1. If the code change and new result are desirable, certify the new results file. This becomes the baseline for future tests.
1. Check any changes into your version control system so that the next developer to exercise this code can stand on your shoulders!

If you run into any issues the first time through, see the sections below. 

### Local Execution Policy

All **hqTestLite** tests are articulated as PowerShell scripts. The first time you run a PowerShell script on your machine, you may get an error indicating that the execution of scripts is disabled on your system. If this occurs, open a PowerShell command prompt *as administrator* and run the following command:

```powershell
Set-ExecutionPolicy Unrestricted
```
	
Click [here](https://www.mssqltips.com/sqlservertip/2702/setting-the-powershell-execution-policy) for more info on setting your local execution policy.

### SQL Server Module

The first time you execute a test, **hqTestLite** may attempt to download and install the *SqlServer* PowerShell module. If this occurs, you will see prompts requesting permission to run NuGet. Grant the requested permissions. 

If this process breaks and you see errors indicating that the module is not connecting to SQL Server, open a PowerShell command prompt *as administrator* and run the following command:

```powershell
Install-Module -Name SqlServer
```

### Markit EDM

By default, **hqTestLite** is expecting Markit EDM (MEDM) v17.1.132.0 to be installed in the default installation directory on your local machine. If you are running a different version of MEDM, or from a different directory, please add the following line to your local *config.ps1* configuration script:

```powershell
$Global:DefaultMedmProcessAgentPath = "<path to MEDM exe>\CadisProcessAgent.exe"
```

### WinMerge
	
**hqTestLite** uses [WinMerge](http://winmerge.org) as its text comparison engine. If you don't already have it, please download and install WinMerge from [SourceForge](https://sourceforge.net/projects/winmerge)

**hqTestLite** expects WinMerge to reside in its default installation directory. If you have elected to install WinMerge in a different directory, please add the following line to your local *config.ps1* configuration script:

```powershell
$Global:DefaultTextDiffExe = "<path to WinMerge exe>\WinMergeU.exe"
```

### Changing Environments

By default, your tests will be executed against the DEV database. To execute in a different environment, edit the following lines in your local *config.ps1* configuration script:

```powershell
$Global:DefaultMedmDbServer = "<MEDM DB Server>"
$Global:DefaultMedmDbName = "<MEDM DB Name>"
```

## Key Files & Directories

**cert.ps1** &ndash; Target of the CERTIFY shortcut. Copies file *abc.xyz* to file *abc.certfied.xyz*.

**CERTIFY shortcut** &ndash; Drop a result file on this shortcut to certify it.

**hqTestLite.psm1** &ndash; hqTestLite PowerShell module.

**DB directory** &ndash; Database objects to be installed in every environment to be tested.

**Local directory** &ndash; Files to be copied to each user's local system.

* **hqTestLite directory** &ndash; Copy this entire directory to the local C drive root. 

  * **config.ps1** &ndash; Local environment configuration file.
  
**Test directory** &ndash; Sample test repository. Copy this into source control and use it as a starting point.

## Global Variables

The hqTestLite module creates a number of global variables, whose default values are set directly in *hqTestLite.psm1*. 

A number of scenarios require these values to be overridden at the local level, for example so that one developer might run his tests in environment other than DEV.

To override a global variable in your local environment, simply copy the variable definition from *hqTestLite.psm1* to your local *config.ps1* file and set it to the desired value. For example, to shift test execution from the DEV to the TEMP environment, add:
```powershell
$Global:DefaultMedmDbName = "MarkitEDM_TMP"
```

### Global Variable Reference

| Variable | Description | Default Value
|:--|:--|:--|
| DefaultMedmProcessAgentPath | The local path to the MEDM Process Agent executable. This path will vary based on the MEDM version in use. Should be consistent across the team. | `"C:\Program Files\Markit Group\Markit EDM_17_1_132_0\CadisProcessAgent.exe"`
| DefaultMedmDbServer | The SQL Server of the MEDM environment against which the test will execute. | `"markitedmdevdb.eatonvance.com"`
| DefaultMedmDbName | The SQL Server database name of the MEDM environment against which the test will execute. | `"MarkitEDM"`
| DefaultTextDiffExe | The local path to your text comparison engine's executable (WinMerge by default). | `"C:\Program Files (x86)\WinMerge\WinMergeU.exe"`
| DefaultTextDiffParams | An array of strings representing the text comparison engine's command-line parameters. Tokens `{CurrentResult}` and `{CertfiedResult}` will be replaced by the relevant file names. | `@("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{CurrentResult}", "{CertifiedResult}"`)
| DefaultSuppressTextDiffPopup | When `$true`, this switch prevents the text comparison engine from being invoked in the event of a failed test. Useful for automated regression testing. | `$false`
| DefaultSqlScriptType | The script type token to use when `-Verbose` or `-WhatIf` are activated. Useful for troubleshooting. | `"Sql Script"`
| DefaultReportFolder | The default location where *Publish-Results* will place test results reports. | `"C:\hqTestLite\Results"`

## Cmdlets

### Invoke-SqlScripts

Executes an ordered list of SQL scripts located in the same directory. Optionally collects their outputs into a text file.

#### Syntax
```powershell
Invoke-SqlScripts `
    -DbServer <string> `
    -DbName <string> `
    [-SqlDir <string>] `
    -SqlFiles <string> `
    [-OutputPath <string>] `
    [-OutputTable] `
    [-ScriptType <string>]
```

#### Parameters

-DbServer
: Required. The target SQL Server database server address. 
Ex: `-DbServer "markitedmdevdb.eatonvance.com"`

-DbName
: Required. The target SQL Server database name. 
Ex: `-DbName "MyDb"`

-SqlDir
: Optional. The directory containing the SQL scripts to be executed. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-SqlDir "./ResultSql"`

-SqlFiles
: Required. A comma-delimited list of SQL script files to be executed. All files must be located within the directory indicated by `-SqlDir`. 
Ex: `-SqlFiles "T_PREMASTER_SEC.sql,T_MASTER_SEC.sql"`

-OutputPath
: Optional. If set, indicates the single text file to which all script outputs will be written. Relative paths will be resolved relative to the current directory. File will be overwritten if it exists. 
Ex: `-OutputPath "Result.txt"`

-OutputTable 
: Switch. If present, causes output data to be formatted as a table. Otherwise output data is formatted as a list. 
Ex: `-OutputTable` 

-ScriptType
: Optional. Differentiates different script types in conjunction with the `-Verbose` and `-WhatIf` switches. Defaults to the value of `$Global:DefaultSqlScriptType`. 
Ex: `-ScriptType "Sql Script"` 


### Invoke-MedmComponent

Executes a Markit EDM Component. Optionally executes a set of SQL setup scripts prior to Component execution, and a set of cleanup scripts after Component execution.

#### Syntax
```powershell
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
#### Parameters

-ProcessAgentPath
: Optional. Path to command line executable for target MEDM version. Defaults to the value of `$Global:DefaultMedmProcessAgentPath`. 
Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CadisProcessAgent.exe"`

-DbServer
: Optional. The target SQL Server database server address. Defaults to the value of `$Global:DefaultMedmDbServer`. 
Ex: `-DbServer "markitedmdevdb.eatonvance.com"`

-DbName
: Optional. The target SQL Server database name. Defaults to the value of `$Global:DefaultMedmDbName`.
Ex: `-DbName "MarkitEDM"`

-SetupSqlDir
: Optional. A directory containing SQL scripts to be executed prior to component invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-SetupSqlDir ".\SetupSql"`

-SetupSqlFiles
: Optional. A comma-delimited list of SQL script files to be executed prior to component invocation. All must be located within the directory indicated by `-SetupSqlDir`. 
Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

-ComponentName
: Required. The name of the MEDM component to be executed. 
Ex: `-ComponentName "My Solution"`

-ComponentType
: Required. The type of the MEDM component to be executed. One of the following values: DataPorter, DataInspector, DataMatcherProcess, DataConstructor, Solution.
Ex: `-ComponentType: "Solution"`

-ConfigurableParams
: Optional. A delimited list of MEDM configurable parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". 
Ex: `-SolutionParams "param1=value1:param2=value2"`

-CleanupSqlDir
: Optional. A directory containing SQL scripts to be executed following component invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-CleanupSqlDir ".\CleanupSql"`

-CleanupSqlFiles
: Optional. A comma-delimited list of SQL script files to be executed following component invocation. All must be located within the directory indicated by `-CleanupSqlDir`. 
Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`

### Confirm-File

Performs file validation. Pops up the diff tool on completion, and writes out test results in JUnit format. *Confirm-File* is useful in the case where you have multiple files output by the process under test. You can call *Invoke-MedmComponent* and then call *Confirm-File* multiple times (once per file output from the process). 

Internally, *Test-MedmComponent* calls *Confirm-File* to validate the test results with a certified file. 

#### Syntax
```powershell
Confirm-File `
	-FilePath <string> `
	-CertifiedFilePath <string> `
	[-SuppressTextDiffPopup] `
	[-TextDiffExe <string>] `
	[-TextDiffParams <string[]>] `
	[-TestName <string>]
```
#### Parameters

-FilePath
: Required. Current test result file. Relative paths will be resolved relative to the current directory.
Ex: `-FilePath "Result.txt"`

-CertifiedFilePath
: Required. Certified test result file. Relative paths will be resolved relative to the current directory.
Ex: `-CertifiedFilePath "Result.certified.txt"`

-SuppressTextDiffPopup
: Switch. If present, prevents the text comparison engine from being invoked in the event of a failed test. Useful for automated regression testing. Defaults to the value of `$Global:DefaultSuppressTextDiffPopup`.
Ex: `-SuppressTextDiffPopup`

-TextDiffExe
: Optional. The local path to your text comparison engine's executable (WinMerge by default). Defaults to the value of `$Global:DefaultTextDiffExe`.
Ex:`-TextDiffExe "C:\Program Files (x86)\WinMerge\WinMergeU.exe"`

-TextDiffParams
: Optional. An array of strings representing the text comparison engine's command-line parameters. Tokens `{CurrentResult}` and `{CertfiedResult}` will be replaced by the relevant file names. Defaults to the value of `$Global:DefaultTextDiffParams`. 
Ex: `-TextDiffParams @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{CurrentResult}", "{CertifiedResult}"`)

### Test-MedmComponent

Tests a Markit EDM component by performing the following actions:

* Optionally execute a set of setup scripts. 
* Executing the component.
* Execute a set of result scripts and consolidate their outputs into a text file.
* Optionally execute a set of cleanup scripts.
* Performing a comparison of the new result file against a certified result.
* If a difference exists, optionally invoke a text comparison engine to visualize it.
* Return a test result object.

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
    [-OutputTable] `
    [-CleanupSqlDir <string>] `
    [-CleanupSqlFiles <string>] `
    [-TestResultPath <string>] `
    [-CertifiedResultPath <string>] `
    [-SuppressDiffToolPopup] `
	[-TextDiffExe <string>] `
	[-TextDiffParams <string[]>] `
    [-TestName <string>]
```

#### Parameters

-ProcessAgentPath
: Optional. Path to command line executable for target MEDM version. Defaults to the value of `$Global:DefaultMedmProcessAgentPath`. 
Ex: `-ProcessAgentPath "C:\Program Files\Markit Group\Markit EDM_10_5_3_1\CadisProcessAgent.exe"`

-DbServer
: Optional. The target SQL Server database server address. Defaults to the value of `$Global:DefaultMedmDbServer`. 
Ex: `-DbServer "markitedmdevdb.eatonvance.com"`

-DbName
: Optional. The target SQL Server database name. Defaults to the value of `$Global:DefaultMedmDbName`.
Ex: `-DbName "MarkitEDM"`

-SetupSqlDir
: Optional. A directory containing SQL scripts to be executed prior to component invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-SetupSqlDir ".\SetupSql"`

-SetupSqlFiles
: Optional. A comma-delimited list of SQL script files to be executed prior to Solution invocation. All must be located within the directory indicated by `-SetupSqlDir`. 
Ex: `-SetupSqlFiles "MySetupSqlFile1.sql,MySetupSqlFile2.sql"`

-ComponentName
: Required. The name of the MEDM component to be executed. 
Ex: `-ComponentName "My Solution"`

-ComponentType
: Required. The type of the MEDM component to be executed. One of the following values: DataPorter, DataInspector, DataMatcherProcess, DataConstructor, Solution.
Ex: `-ComponentType: "Solution"`

-ConfigurableParams
: Optional. A delimited list of MEDM configurable parameter name=value pairs. Pairs are delimited with a ":". Only include parameters that must be explicitly set; those retaining default values may be omitted. Parameter names and values must not contain characters "=" or ":". 
Ex: `-SolutionParams "param1=value1:param2=value2"`

-ResultSqlDir
: Optional. A directory containing SQL scripts to extract test results after component execution. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-ResultSqlDir ".\ResultSql"`

-ResultSqlFiles
: Optional. A comma-delimited list of SQL script files to extract test results after component execution. All must be located within the directory indicated by `-ResultSqlDir`. 
Ex: `-ResultSqlFiles "MyResultSqlFile1.sql,MyResultSqlFile2.sql"`

-OutputTable 
: Switch. If present, causes output data to be formatted as a table. Otherwise output data is formatted as a list. 
Ex: `-OutputTable` 

-CleanupSqlDir
: Optional. A directory containing SQL scripts to be executed following component invocation. Relative paths will be resolved relative to the current directory. If omitted, defaults to the current directory. 
Ex: `-CleanupSqlDir ".\CleanupSql"`

-CleanupSqlFiles
: Optional. A comma-delimited list of SQL script files to be executed following component invocation. All must be located within the directory indicated by `-CleanupSqlDir`. 
Ex: `-CleanupSqlFiles "MyCleanupSqlFile1.sql,MyCleanupSqlFile2.sql"`

-TestResultPath
: Required. Destination file for test result scripts. Relative paths will be resolved relative to the current directory, and any existing file of the same name will be overwritten.
Ex: `-TestResultPath "Result.txt"`

-CertifiedResultPath
: Required. Certified test result file. Relative paths will be resolved relative to the current directory.
Ex: `-CertifiedFilePath "Result.certified.txt"`

-SuppressTextDiffPopup
: Switch. If present, prevents the text comparison engine from being invoked in the event of a failed test. Useful for automated regression testing. Defaults to the value of `$Global:DefaultSuppressTextDiffPopup`.
Ex: `-SuppressTextDiffPopup`

-TextDiffExe
: Optional. The local path to your text comparison engine's executable (WinMerge by default). Defaults to the value of `$Global:DefaultTextDiffExe`.
Ex:`-TextDiffExe "C:\Program Files (x86)\WinMerge\WinMergeU.exe"`

-TextDiffParams
: Optional. An array of strings representing the text comparison engine's command-line parameters. Tokens `{CurrentResult}` and `{CertfiedResult}` will be replaced by the relevant file names. Defaults to the value of `$Global:DefaultTextDiffParams`. 
Ex: `-TextDiffParams @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{CurrentResult}", "{CertifiedResult}"`)

-TestName
: Optional. If present, is included in the `Name` property of the return object.
Ex: `-TestName "1000 Load BPS Security"`

#### Returns

An object with the following properties:

* Name &ndash; Contains the value passed in the `-TestName` argument
* Status &ndash; `PASSED` or `FAILED`
* Time &ndash; The execution time of the Markit EDM Component being tested
* Reason &ndash; if Status is `FAILED`, Reason will contain the diff results showing where the test result file is different from the certified file.

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

-ReportFolder
: Optional. Points to the folder that should contain the generated report. If omitted, defaults to `$Global:DefaultReportFolder`.
Ex: `-ReportFolder "C:\hqTestLite\Results"`

-TestSuiteName
: Required. The name of the test suite. Can be whatever string value you choose.
Ex: `-TestSuiteName "Load Tests"`

-Results
: Required. An array containing test results objects returned from calls to `Test-MedmComponent`. 
Ex: `-Results $MyResults`

-ReportFormat
: Optional. The desired report format. Defaults to `"JUnit"`.
Ex: `-ReportFormat "JUnit"`

#### Returns

A string value containing the path to the report file.

## Database Objects

The DB directory contains a number of database objects intended to assist in the extraction of test results.

### dbo.UDF_PPA_Core_Rows

This table-valued function generates a sequence of integers as a one-column rowset.

| Parameter | Data Type | Description
|--|:--:|:--|
| @n | int | Number of rows to generate.

### dbo.UDF_PPA_Core_Split_Delimiter

This table-valued function splits a delimited string into a rowset.

| Parameter | Data Type | Description
|--|:--:|:--|
| @String | nvarchar(max) | Delimited string.
| @Delimiter| nvarchar(255) | String delimiter.

### dbo.USP_PPA_Core_DumpData

This stored procedure dynamically selects data from a table or a view. It is the primary method of extracting test result data from the database. Omitted parameters will acquire their default values.

| Parameter | Data Type | Default Value | Description
|--|:--:|:--|:--|
| @TableSchema| nvarchar(128) | 'dbo' | Optional. Schema of object to be queried.
| @TableName| nvarchar(128) | | Required. Name of object to be queried. Can be either a table or a view.
| @ColumnAction| char(1), 'I' or 'E' | 'E' | Optional. Specifies whether columns matching the patterns expressed in @ColumnList should be [I]ncluded or [E]xcluded.
| @ColumnList | nvarchar(max) | '%RunId,CADIS\\\_SYSTEM\\\_%' | Optional. Comma-delimited list of LIKE-syntax patterns that specify columns to be included or excluded form the query. Escape special characters with a '\\'.
| @Where| nvarchar(max) | NULL | Optional. Logical expression that will be applied to the query in a WHERE clause.
| @OrderBy| nvarchar(max) | NULL | Optional. Column list that will be applied to the query in an ORDER BY clause.




