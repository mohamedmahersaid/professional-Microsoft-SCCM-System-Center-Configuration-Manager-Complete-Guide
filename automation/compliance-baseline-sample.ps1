
# SCCM Compliance Baseline Sample - Disable Guest Account

$guest = Get-LocalUser -Name "Guest"

if ($guest.Enabled -eq $false) {
    Write-Output "Compliant: Guest account is disabled."
    exit 0
} else {
    Write-Output "Non-compliant: Guest account is enabled."
    exit 1
}
