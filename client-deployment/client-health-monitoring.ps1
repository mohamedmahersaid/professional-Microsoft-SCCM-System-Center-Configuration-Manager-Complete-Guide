
# SCCM Client Health Monitoring Script

$computers = Get-Content "C:\SCCM\clientlist.txt"

foreach ($comp in $computers) {
    Write-Host "Checking: $comp"

    $ping = Test-Connection -ComputerName $comp -Count 1 -Quiet
    if ($ping) {
        $clientVer = Invoke-Command -ComputerName $comp -ScriptBlock {
            Get-WmiObject -Namespace "root\ccm" -Class "SMS_Client" | Select Version
        }

        if ($clientVer) {
            Write-Host "$comp SCCM Client Version: $($clientVer.Version)"
        } else {
            Write-Host "$comp: SCCM client not detected"
        }
    } else {
        Write-Host "$comp: Offline"
    }
}
