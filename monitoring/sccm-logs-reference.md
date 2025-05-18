
# SCCM Logs Reference (Essential for Troubleshooting)

Logs are stored in:
- `C:\Program Files\Microsoft Configuration Manager\Logs`
- `%windir%\CCM\Logs` (on clients)

---

## Server-Side Logs

| Log File               | Description |
|------------------------|-------------|
| `mpcontrol.log`        | MP registration and status |
| `smsprov.log`          | WMI provider interactions |
| `smsexec.log`          | Core SCCM engine |
| `sitecomp.log`         | Site component status |
| `distmgr.log`          | Content distribution |
| `wsyncmgr.log`         | Software update sync |
| `smpmsi.log`           | State migration point install |

---

## Client-Side Logs

| Log File               | Description |
|------------------------|-------------|
| `ccmsetup.log`         | Client installation |
| `clientidmanagerstartup.log` | GUID generation |
| `execmgr.log`          | Application execution |
| `smsts.log`            | Task sequence execution |
| `locationservices.log` | Site assignment |

---

## Tools

- **CMTrace.exe** – SCCM log viewer with real-time monitoring
