
# SCCM Client Installation Methods

There are multiple supported ways to install the Configuration Manager client on managed devices.

---

## 1. Client Push Installation

- Enable from **Administration > Site Configuration > Sites > Properties > Client Installation Settings**
- Set up accounts under **Client Push Installation Accounts**

---

## 2. Manual Installation (CMD)

```cmd
\SCCMServer\SMS_<SiteCode>\Client\ccmsetup.exe /mp:SCCMServer /logon SMSSITECODE=<SiteCode>
```

---

## 3. Group Policy Installation

- Create GPO with a startup script pointing to `ccmsetup.exe`

---

## 4. Logon Script

Use login script or scheduled task in AD:

```cmd
start "" "\SCCMServer\SMS_<SiteCode>\Client\ccmsetup.exe"
```

---

## 5. Intune Co-Management

Deploy ConfigMgr client via Intune if hybrid environment is configured.

---

## 6. Monitoring Installation

Client Logs:
- `C:\Windows\CCMSetup\Logs\ccmsetup.log`
- `C:\Windows\CCM\Logs\ClientIDManagerStartup.log`
