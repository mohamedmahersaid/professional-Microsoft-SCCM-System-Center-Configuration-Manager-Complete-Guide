
# Configuring Distribution Points (DP) in SCCM

Distribution Points host content such as applications, updates, and OS images for client installation.

---

## 1. Add Distribution Point Role

1. Go to **Administration > Site Configuration > Servers and Site System Roles**
2. Right-click server > Add Site System Role
3. Select **Distribution Point**
4. Choose whether to:
   - Enable PXE
   - Enable multicast
   - Allow fallback

---

## 2. Configure Content Locations

1. Set drive settings (Drive letter, free space)
2. Configure content validation

---

## 3. Prestage Content (Optional)

```powershell
Export-CMContent -ContentId <PackageID> -Path "D:\Prestage"
```

---

## 4. Monitor DP Health

Check:
- distmgr.log
- smsexec.log
- Configuration Manager Console > Monitoring > Distribution Status

---

## 5. Best Practices

- Use 1 DP per site or subnet
- Enable bandwidth throttling for WAN DPs
- Use boundary groups for DP targeting
