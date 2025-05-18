
# Creating a Task Sequence in SCCM for OS Deployment

A Task Sequence automates the process of deploying an operating system to new devices.

---

## 1. Prerequisites

- Boot image
- OS image (captured or default WIM)
- DP configured with PXE
- Optional: Driver packages, scripts

---

## 2. Create Task Sequence

1. Go to **Software Library > Operating Systems > Task Sequences**
2. Click **Create Task Sequence**
3. Choose:
   - Install an existing image package
4. Provide:
   - Task sequence name
   - Boot image
   - Image package
   - Product key (optional)
   - Domain join credentials

---

## 3. Add Custom Steps (Optional)

- Install software
- Run PowerShell scripts
- Apply drivers
- Set local admin password

---

## 4. Deploy the Task Sequence

1. Right-click task sequence > **Deploy**
2. Choose collection (e.g., Unknown Computers)
3. Set deployment settings:
   - **Purpose**: Required
   - **Make available to boot media and PXE**

---

## 5. Monitor Deployment

- `smspxe.log`
- `smsts.log` (on client)
- Monitoring node in SCCM console
