
# SCCM Prerequisites Checklist

This document outlines all prerequisites for a successful SCCM installation.

---

## 1. Operating System

- Windows Server 2019 or 2022
- Latest updates and patches applied

---

## 2. Roles & Features

- .NET Framework 4.8
- BITS
- Remote Differential Compression
- IIS (with required components)
- WSUS (if managing updates)

---

## 3. SQL Server

- SQL Server 2017/2019 (CU latest)
- Use dedicated instance
- Collation: `SQL_Latin1_General_CP1_CI_AS`

---

## 4. Service Accounts

| Account               | Purpose                  |
|------------------------|--------------------------|
| SCCMAdmin              | SCCM installation/admin  |
| SCCMClientPush         | Client installation      |
| SCCMNetworkAccess      | Access during OSD        |

---

## 5. Permissions

- Local Administrator on SCCM server
- Sysadmin on SQL Server instance
- Domain Admin (for initial install only, if needed)

---

## 6. AD Schema Extension (optional)

Run `extadsch.exe` from SCCM ISO to extend schema for full functionality.

---

## 7. Firewall Ports

| Port | Protocol | Description        |
|------|----------|--------------------|
| 80   | HTTP     | Client communication |
| 443  | HTTPS    | Secure client traffic |
| 445  | SMB      | Client push         |
| 8530/8531 | HTTP/HTTPS | WSUS traffic  |
