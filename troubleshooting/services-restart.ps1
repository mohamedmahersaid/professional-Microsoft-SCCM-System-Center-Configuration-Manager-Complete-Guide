
# Restart Key SCCM Services

$services = @(
    "SMS_EXECUTIVE",
    "SMS_SITE_COMPONENT_MANAGER",
    "SMS_SQL_MONITORING_COMPONENT",
    "SMS_POLICY_PROVIDER",
    "W3SVC",
    "WSUSService"
)

foreach ($svc in $services) {
    Write-Host "Restarting $svc..."
    Restart-Service -Name $svc -Force -ErrorAction SilentlyContinue
}

Write-Host "All key SCCM services restarted."
