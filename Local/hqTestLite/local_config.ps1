# Shared directory containing hqTestLite module (the GitHub repo clone directory).
$Global:ModuleDir = "{{ModuleDir}}"

# Execute tests without user input.
If (!$NoInput) { $Global:NoInput = {{NoInput}} }

# Set active environment. Valid values: DEV, TMP.
If (!$ActiveEnvironment) { $Global:ActiveEnvironment = "DEV" }

# Load shared config.
Invoke-Expression "$ModuleDir\shared_config.ps1"
