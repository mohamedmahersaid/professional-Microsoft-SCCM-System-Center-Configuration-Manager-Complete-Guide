
# PowerShell Template to Deploy MSI-Based Application in SCCM

$AppName = "Google Chrome"
$AppPublisher = "Google"
$AppVersion = "123.0.0"
$SourcePath = "\\SCCM01\Sources\Apps\Chrome"
$InstallCmd = "msiexec /i chrome.msi /qn"
$DetectionFile = "C:\Program Files\Google\Chrome\Application\chrome.exe"

# Create application
New-CMApplication -Name $AppName -Publisher $AppPublisher -SoftwareVersion $AppVersion

# Create deployment type
Add-CMScriptDeploymentType -ApplicationName $AppName -DeploymentTypeName "Install MSI" `
    -InstallCommand $InstallCmd -ContentLocation $SourcePath `
    -InstallationBehaviorType InstallForSystem -LogonRequirementType WhetherOrNotUserLoggedOn `
    -DetectionScript (New-CMScriptDetectionClause -ScriptText "Test-Path '$DetectionFile'")

Write-Host "Application and deployment type created for: $AppName"
