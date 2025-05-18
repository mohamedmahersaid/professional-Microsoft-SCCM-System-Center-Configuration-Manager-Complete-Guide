
# Common SCCM Errors and Fixes

This document summarizes frequently encountered SCCM issues and their resolutions.

---

## 1. PXE Boot Fails (No boot file received)

- Check IP helper on network switch
- Verify `smspxe.log`
- Ensure boot image is distributed and updated on DP

---

## 2. Application Deployment Fails

- Check `AppEnforce.log` and `ExecMgr.log`
- Review detection method and return codes

---

## 3. Software Updates Not Installing

- Check `WUAHandler.log`, `UpdatesHandler.log`
- Ensure SUP is synced and assigned

---

## 4. Client Not Reporting to Site

- Review `ClientIDManagerStartup.log`, `LocationServices.log`
- Reassign site manually:
```powershell
C:\Windows\CCM\ccmexec.exe /resetsite
```

---

## 5. Console Crashes or Slowness

- Clear console cache:
```cmd
%AppData%\Microsoft\MMC
```
- Ensure enough memory on SCCM server

---

## 6. Task Sequence Fails Midway

- Review `smsts.log` on client (e.g., `X:\windows\temp\smstslog\smsts.log`)
- Check for missing content or drivers
