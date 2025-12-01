# FIX: PowerShell Execution Policy Issue

## The Problem
PowerShell is blocking npm from running. This is why the server won't start.

## Solution: Use Command Prompt Instead

**Don't use PowerShell** - Use Command Prompt (cmd.exe) instead.

### Step 1: Open Command Prompt
1. Press `Win + R`
2. Type: `cmd`
3. Press Enter

### Step 2: Navigate to Your Project
```cmd
cd /d "E:\Portfolio development\Netify"
```

### Step 3: Start the Server
```cmd
npm run dev
```

OR simply double-click: **`start-server.bat`**

## Alternative: Fix PowerShell (If You Want to Use PowerShell)

If you want to use PowerShell, run this **as Administrator**:

1. Right-click PowerShell → "Run as Administrator"
2. Run this command:
```powershell
Set-ExecutionPolicy RemoteSigned
```
3. Type `Y` when prompted
4. Then try `npm run dev` again

## Recommended: Use the Batch File

The easiest way is to just **double-click `start-server.bat`** - it will work regardless of PowerShell settings.

## What to Expect

After running `npm run dev` in Command Prompt, you should see:
```
VITE v5.x.x  ready in XXX ms

➜  Local:   http://localhost:3000/
➜  Network: http://192.168.x.x:3000/
```

Then open your browser to: **http://localhost:3000**

