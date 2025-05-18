
# Preparing SQL Server for SCCM

---

## 1. Supported Versions

- SQL Server 2017 or 2019
- CU Latest
- Collation: `SQL_Latin1_General_CP1_CI_AS`

---

## 2. SQL Setup Recommendations

- Install on same server (for labs/single server)
- Or remote SQL with firewall ports open (1433 TCP)

---

## 3. Configuration Tips

- Create dedicated SCCM instance (optional)
- Enable TCP/IP in SQL Configuration Manager
- Add SCCM computer account to SQL `sysadmin`

---

## 4. Create Required Database

The installer will create the DB automatically, but ensure:

```sql
-- SQL Server Configuration
sp_configure 'clr enabled', 1;
RECONFIGURE;
```

---

## 5. Service Account

- Add `SCCMAdmin` or setup user as sysadmin
- Add same user to Local Admins on SQL box

---

## 6. Verify Connectivity

```powershell
Test-NetConnection -ComputerName SQL01 -Port 1433
```
