# 🚨 IMPORTANT: Install Node.js First!

## The Problem
`npm` is not found because **Node.js is NOT installed** on your computer.

## The Solution - 3 Simple Steps

### STEP 1: Download Node.js
1. Open your browser and go to: **https://nodejs.org/**
2. Click the **"LTS"** button (Green button on the left)
3. The download should start automatically

### STEP 2: Install Node.js
1. Find the downloaded file in your Downloads folder
2. **Double-click** it to open the installer
3. Click **"Next"** and **"Install"** to complete installation
4. **IMPORTANT**: Let it finish completely
5. **Restart your PowerShell/Terminal** after installation

### STEP 3: Verify Installation
Open a **NEW PowerShell** window and run:

```powershell
node --version
npm --version
```

If both show version numbers (like `v18.0.0`), you're done! ✅

---

## After Installing Node.js

Once Node.js is installed, run this in your mongo folder:

```powershell
cd "f:\Programing code\mongo"
npm install
npm run dev
```

---

## Having Issues?

### PowerShell still says "npm not found"?
- **RESTART PowerShell** - This is important!
- The system needs to recognize the new program

### Download link doesn't work?
- Go directly to: https://nodejs.org/
- Click the green **LTS** button

### Need to download MongoDB too?
- After Node.js is working, follow [SETUP_GUIDE.md](SETUP_GUIDE.md)

---

## ⚠️ Critical: You MUST Install Node.js

Without Node.js:
- ❌ `npm` won't work
- ❌ `node` won't work  
- ❌ Project won't run

**Don't skip this step!**

Once you install Node.js and restart PowerShell, everything will work.
