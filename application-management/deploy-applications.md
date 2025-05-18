
# Deploying Applications in SCCM

SCCM supports deployment of MSI, EXE, and script-based applications.

---

## 1. Create Application (MSI Example)

1. Go to **Software Library > Applications**
2. Click **Create Application**
3. Choose **Windows Installer (*.msi file)** and browse to source
4. Fill in metadata (Name, Publisher, Version)
5. Confirm deployment type details

---

## 2. Create Deployment Type (EXE Example)

- Choose “Manually specify the deployment type”
- Fill in:
  - Install command: `setup.exe /silent`
  - Detection rule: File, Registry, or MSI

---

## 3. Distribute Content

1. Right-click application > **Distribute Content**
2. Select Distribution Point or Group

---

## 4. Deploy to Devices

1. Right-click app > **Deploy**
2. Choose collection (e.g., All Workstations)
3. Specify purpose:
   - **Required** = auto install
   - **Available** = user can install from Software Center
4. Schedule and user experience

---

## 5. Monitor Deployment

Check:
- **Monitoring > Deployments**
- Client log: `AppEnforce.log`, `AppDiscovery.log`
