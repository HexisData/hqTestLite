# Shared directory containing hqTestLite module (the GitHub repo clone directory).
$Global:ModuleDir = "{{ModuleDir}}"

# Execute tests without user input.
$Global:NoInput = {{NoInput}}

# Set active environment. Valid values: DEV, TMP.
$Global:ActiveEnvironment = "DEV"
Invoke-Expression "$ModuleDir\shared_config.ps1"
