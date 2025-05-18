
# Creating Custom SCCM Reports

SCCM uses SQL views and WQL queries to build detailed reports on deployments, inventory, and compliance.

---

## 1. Tools Needed

- SQL Server Management Studio (SSMS)
- Report Builder or SSRS Web Portal

---

## 2. Sample Custom SQL Query

### List All Installed Applications by Device

```sql
SELECT
  v_GS_COMPUTER_SYSTEM.Name AS 'ComputerName',
  v_Add_Remove_Programs.DisplayName AS 'AppName',
  v_Add_Remove_Programs.Version0 AS 'Version'
FROM
  v_GS_COMPUTER_SYSTEM
JOIN
  v_Add_Remove_Programs ON v_GS_COMPUTER_SYSTEM.ResourceID = v_Add_Remove_Programs.ResourceID
ORDER BY
  v_GS_COMPUTER_SYSTEM.Name
```

---

## 3. Creating a Report

1. Go to `http://<SCCM-Server>/Reports`
2. Click **New Report** > Choose **Wizard** or **Custom**
3. Paste your SQL query
4. Save, test, and organize into folders

---

## 4. Tips

- Use views like `v_R_System`, `v_GS_Operating_System`, `v_UpdateComplianceStatus`
- Document parameters and filters for reuse
- Secure reports with role-based access
