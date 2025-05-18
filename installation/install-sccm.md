
# Installing Microsoft System Center Configuration Manager (SCCM)

This guide outlines the steps to install the SCCM primary site server.

---

## 1. Prepare Environment

- Install prerequisites (see `/prerequisites`)
- Assign static IP and name the server (e.g., SCCM01)
- Join to domain

---

## 2. Mount SCCM ISO

Mount the SCCM installation ISO and run `splash.hta`.

---

## 3. Run Prerequisite Checker

From setup, click “Run Prerequisite Check” and resolve any errors.

---

## 4. Launch Installer

1. Choose **Install a Configuration Manager primary site**
2. Accept license and choose **download updates** or skip
3. Specify site code (e.g., `P01`), site name
4. Select SQL Server FQDN and instance name
5. Configure communication (HTTP/HTTPS or mixed)
6. Configure boundary group settings (optional)
7. Confirm installation

---

## 5. Monitor Installation

Logs to monitor:
- `C:\ConfigMgrSetup.log`
- `C:\SMSSetup\Logs\*`

---

## 6. Post-Install Steps

- Launch **Configuration Manager Console**
- Install site system roles: MP, DP, SUP
- Configure discovery methods
