
# Integrating WSUS with SCCM

Integrating Windows Server Update Services (WSUS) with SCCM enables centralized patch management.

---

## 1. Install WSUS Role

```powershell
Install-WindowsFeature UpdateServices, UpdateServices-RSAT, NET-Framework-Features
```

- Choose DB type (WID or SQL)
- Use WSUS Administration Console to finish setup

---

## 2. Configure WSUS for SCCM

- Do **NOT** configure WSUS via WSUS console after SCCM integration
- SCCM will manage WSUS settings

---

## 3. Add SUP Role in SCCM

1. Go to **Administration > Site Configuration > Servers and Site System Roles**
2. Add **Software Update Point (SUP)**
3. Set:
   - WSUS port (e.g., 8530)
   - Sync schedule
   - Classification (e.g., Security, Critical)
   - Products (e.g., Windows 10, Office)

---

## 4. Synchronize Updates

1. Go to **Software Library > Software Updates > All Software Updates**
2. Click **Synchronize Software Updates**
3. Monitor logs:
   - `wcm.log`
   - `wsyncmgr.log`
   - `SUPSetup.log`

---

## 5. Create Update Groups and Deploy

1. Create **Software Update Group**
2. Download and deploy to target collections
3. Monitor compliance via **Monitoring > Deployments**
