
# Install required Windows Features for SCCM

Install-WindowsFeature Web-Windows-Auth, Web-Metabase, Web-Asp-Net45, Web-WMI, NET-Framework-Features, BITS, RDC, RSAT-ADDS

# Optional (for WSUS roles)
Install-WindowsFeature UpdateServices, UpdateServices-DB, UpdateServices-RSAT

Write-Host "Required features installed. Reboot recommended." -ForegroundColor Green
