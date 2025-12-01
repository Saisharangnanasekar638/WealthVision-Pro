# Troubleshooting Guide

## Issue: App not running on localhost

### Step 1: Check if Node.js is installed
```bash
node --version
npm --version
```

### Step 2: Install dependencies (if not already done)
```bash
npm install
```

### Step 3: Start the development server

**Option A: Using Command Prompt (Recommended)**
1. Open Command Prompt (cmd.exe)
2. Navigate to the project:
   ```
   cd /d "E:\Portfolio development\Netify"
   ```
3. Run:
   ```
   npm run dev
   ```

**Option B: Using the batch file**
1. Double-click `start-dev.bat` in Windows Explorer
2. Or run from Command Prompt:
   ```
   start-dev.bat
   ```

**Option C: Using PowerShell (if execution policy allows)**
1. Open PowerShell as Administrator
2. Run: `Set-ExecutionPolicy RemoteSigned`
3. Navigate to project and run: `npm run dev`

### Step 4: Check the output
You should see something like:
```
  VITE v5.x.x  ready in xxx ms

  ➜  Local:   http://localhost:5173/
  ➜  Network: http://192.168.x.x:5173/
```

### Step 5: Open in browser
- The browser should open automatically
- If not, manually open: `http://localhost:5173/`

## Common Issues

### Issue: "npm is not recognized"
- **Solution**: Install Node.js from https://nodejs.org/

### Issue: "Port 5173 already in use"
- **Solution**: 
  1. Close other applications using port 5173
  2. Or change the port in `vite.config.js`:
     ```js
     server: {
       port: 3000, // or any other port
     }
     ```

### Issue: "Cannot find module" errors
- **Solution**: Run `npm install` to install all dependencies

### Issue: PowerShell execution policy error
- **Solution**: Use Command Prompt (cmd.exe) instead of PowerShell, or run PowerShell as Administrator and set execution policy

### Issue: Blank page or errors in browser console
1. Open browser Developer Tools (F12)
2. Check the Console tab for errors
3. Check the Network tab for failed requests
4. Share the error messages for further help

## Verify Installation

Run these commands to verify everything is set up:
```bash
npm list react
npm list vite
npm list @vitejs/plugin-react
```

All should show version numbers without errors.

