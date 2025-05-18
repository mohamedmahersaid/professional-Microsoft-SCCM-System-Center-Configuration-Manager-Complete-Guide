
# Configuring SCCM Boundaries and Boundary Groups

Boundaries define where clients reside in the network. Boundary groups associate clients to site systems.

---

## 1. Supported Boundary Types

- IP Subnet
- Active Directory Site
- IPv6 Prefix
- IP Address Range

---

## 2. Create a Boundary

1. Go to **Administration > Hierarchy Configuration > Boundaries**
2. Click **Create Boundary**
3. Choose type (e.g., IP Range), provide info

---

## 3. Create Boundary Group

1. Go to **Boundary Groups**
2. Click **Create Boundary Group**
3. Add the previously created boundary
4. Add site systems (MP, DP, SUP) for content location

---

## 4. Set Relationships

- Set fallback times for DPs and SUPs
- Associate multiple boundaries per group

---

## 5. Verification

Run:
```powershell
Get-CMBoundary
Get-CMBoundaryGroup
```

Or from client:

```powershell
Configuration Manager > Network > Site Code
```
