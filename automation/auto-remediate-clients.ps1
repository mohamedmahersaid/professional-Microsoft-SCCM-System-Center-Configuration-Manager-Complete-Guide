
# SCCM Client Auto-Remediation Script

$computers = Get-Content "C:\SCCM\Clients.txt"

foreach ($comp in $computers) {
    Write-Host "Processing: $comp"

    $ping = Test-Connection -ComputerName $comp -Count 1 -Quiet
    if ($ping) {
        Invoke-Command -ComputerName $comp -ScriptBlock {
            Stop-Service ccmexec -Force
            Remove-WmiObject -Namespace "root\ccm" -Class SMS_Client
            Start-Sleep -Seconds 5
            Start-Process "C:\Windows\ccmsetup\ccmsetup.exe" -ArgumentList "/retry:2 /forceinstall" -Wait
        }
        Write-Host "Remediation complete for: $comp"
    } else {
        Write-Host "$comp: Offline"
    }
}
