
# Setting Up PXE Boot for OS Deployment in SCCM

PXE boot allows bare-metal machines to boot from the network and receive an OS image via task sequences.

---

## 1. Enable PXE on Distribution Point

1. Go to **Administration > Site Configuration > Servers and Site System Roles**
2. Right-click your DP > **Properties**
3. Check:
   - **Enable PXE support for clients**
   - **Allow this distribution point to respond to incoming PXE requests**
   - Optional: Enable unknown computer support

---

## 2. Configure Boot Images

1. Go to **Software Library > Operating Systems > Boot Images**
2. Right-click a boot image > **Distribute Content**
3. Right-click again > **Update Distribution Points**
4. Enable PXE support on x64 boot image

---

## 3. Configure DHCP (if not co-located with PXE)

- IP Helper address on switch pointing to PXE server
- Or set DHCP options:
  - Option 66: SCCM PXE server IP
  - Option 67: `smsboot\x64\wdsmgfw.efi`

---

## 4. Monitor PXE Logs

- `smsdpmon.log`
- `distmgr.log`
- `pxecontrol.log`
- `smspxe.log`

---

## 5. Test PXE Boot

- Use a VM or physical device with network boot enabled
- Ensure it's not already known to SCCM if using unknown computer support
