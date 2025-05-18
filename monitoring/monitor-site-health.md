
# Monitoring SCCM Site Health

SCCM includes multiple tools and dashboards for ensuring component and server health.

---

## 1. Monitoring Dashboard

Navigate to:
**Monitoring > Overview > Site Status**

Review:
- Component Status (SMS_EXEC, SMS_SITE_COMPONENT_MANAGER)
- Site System Roles
- SQL status

---

## 2. Logs for Health Monitoring

| Log File            | Description                          |
|---------------------|--------------------------------------|
| `mpcontrol.log`     | Management point status              |
| `smsexec.log`       | Core SCCM engine operations          |
| `componentstatus.log` | Component health data              |
| `sitecomp.log`      | Site component manager actions       |
| `sender.log`        | Site-to-site communication           |

---

## 3. Site Maintenance Tasks

- Enable via: **Administration > Site Configuration > Sites > Maintenance Tasks**
- Common tasks:
  - Rebuild Indexes
  - Delete Aged Client Operations
  - Summarize Software Metering

---

## 4. PowerShell Check (Site Status)

```powershell
Get-CMSiteStatus -SiteCode P01
```

---

## 5. Alerts & Notifications

- Configure alerts under:
  **Monitoring > Alerts**
- Enable email subscriptions using SMTP
