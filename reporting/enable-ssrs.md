
# Enabling SCCM Reporting with SSRS

SQL Server Reporting Services (SSRS) enables SCCM to deliver powerful visual reports.

---

## 1. Install SQL Server Reporting Services

- Download from: [https://www.microsoft.com/en-us/download/details.aspx?id=55252](https://www.microsoft.com/en-us/download/details.aspx?id=55252)
- Install as standalone service
- Configure Report Server URL via **Reporting Services Configuration Manager**

---

## 2. Add Reporting Services Point in SCCM

1. Go to **Administration > Site Configuration > Servers and Site System Roles**
2. Right-click your server > Add Site System Role
3. Select **Reporting Services Point**
4. Validate the Report Server instance (e.g., `MSSQLSERVER`)
5. Choose Native mode and verify SSRS URL

---

## 3. Verify Report Access

- Navigate to `http://<SCCM-Server>/Reports`
- Test running built-in reports:
  - Software Metering
  - Hardware Inventory
  - Deployment Status

---

## 4. Logs to Monitor

- `srsrp.log`
- `smsrspsetup.log`
