# Override default shared settings here.

# If your MEDM installation path is non-default.
# $Global:DefaultMedmProcessAgentPath = "C:\Program Files\Markit Group\Markit EDM_17_1_132_0\CadisProcessAgent.exe"

# If you want to use another text comparison tool instead of WinMerge.
# $Global:DefaultTextDiffExe = "C:\Program Files (x86)\WinMerge\WinMergeU.exe"
# $Global:DefaultTextDiffParams = @("/e", "/s", "/u", "/wl", "/wr", "/dl", "Current Result", "/dr", "Certified Result", "{CurrentResult}", "{CertifiedResult}")

# If you would rather not see a text diff by default.
# $Global:DefaultSuppressTextDiffPopup = $false

# If you want to drive your report files to a different directory.
# $Global:DefaultReportFolder = "C:\hqTestLite\Results"

# Shared directory containing hqTestLite module (the GitHub repo clone directory).
$Global:ModuleDir = "//netshare/project/hqTestLite"

# Set active environment. Valid values: DEV, TMP.
$Global:ActiveEnvironment = "DEV"
