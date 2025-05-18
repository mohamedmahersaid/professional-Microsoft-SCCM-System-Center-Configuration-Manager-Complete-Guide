
# Automate Deployment of Windows Updates in SCCM

# Create Software Update Group
$groupName = "Monthly Patches - " + (Get-Date -Format "yyyy-MM")
$group = New-CMSoftwareUpdateGroup -Name $groupName

# Add updates matching criteria
$updates = Get-CMSoftwareUpdate | Where-Object {
    $_.ArticleID -ne $null -and $_.IsDeployed -eq $false -and $_.DateReleased -gt (Get-Date).AddDays(-30)
}

Add-CMSoftwareUpdateToGroup -SoftwareUpdateGroupName $groupName -SoftwareUpdate $updates

# Deploy
Start-CMSoftwareUpdateDeployment -SoftwareUpdateGroupName $groupName -CollectionName "All Workstations" `
 -DeploymentName "$groupName Deployment" -DeployPurpose Required -SendWakeUpPacket $false

Write-Host "Software update group created and deployed: $groupName"
