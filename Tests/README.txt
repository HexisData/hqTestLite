WELCOME TO HQTESTLITE!

Here is some info to get you started...

EXECUTION POLICY

All hqTestLite tests are articulated as PowerShell (PS) scripts. The first time you run a PS script on your machine, you may get an error indicating that the execution of scripts is disabled on your system. If this occurs, open a PS command prompt AS ADMINISTRATOR and run the following command:

	Set-ExecutionPolicy Unrestricted
	
More info: https://www.mssqltips.com/sqlservertip/2702/setting-the-powershell-execution-policy/

SQL SERVER MODULE

The first time you execute a test, the hqTestLite module may attempt to download and install the SqlServer PS module. If this occurs, you will see prompts requesting permission to run NuGet. Please grant the requested permission. 

If this process breaks and you see errors indicating that the module is not connecting to SQL Server, open a PS command prompt AS ADMINISTRATOR and run the followig command:

	Install-Module -Name SqlServer
	
CONFIG.PS1
	
MEDM

By default, hqTestLite is expecting Markit EDM v17.1.132.0 to be installed in the default directory on your local machine. If you are running a different version or from a different directory, please add the following line to your local CONFIG.PS1 file:

	$Global:DefaultMedmProcessAgentPath = "<path to MEDM exe>\CadisProcessAgent.exe"

	
WINMERGE
	
hqTestLite uses WinMerge as its text comparison tool. If you don't already have it, please download and install WinMerge from https://sourceforge.net/projects/winmerge/

hqTestLite expects WinMerge to reside in its default installation directory. If you have elected to install WinMerge in a different directory, please add the following line to your local CONFIG.PS1 file:

	$Global:DefaultTextDiffExe = "<path to WinMerge exe>\WinMergeU.exe"
	
CHANGING ENVIRONMENTS

By default, your tests will be executed against the DEV database. To execute in a different environment, edit the following lines in your local CONDIG.PS1 file:

	$Global:DefaultMedmDbServer = "<MEDM DB Server>"
	$Global:DefaultMedmDbName = "<MEDM DB Name>"

