# Server Connection Issue - Step by Step Fix

## The Problem
You're getting "ERR_CONNECTION_REFUSED" which means the server isn't running or crashed.

## Solution Steps

### Step 1: Kill All Node Processes
Open Command Prompt (cmd.exe) and run:
```cmd
taskkill /F /IM node.exe
```

### Step 2: Start the Server Properly

**Option A: Use the New Batch File (Easiest)**
1. Double-click `start-server.bat`
2. Wait for it to start
3. Look for the URL in the output

**Option B: Manual Start in Command Prompt**
```cmd
cd "E:\Portfolio development\Netify"
npm run dev
```

**Option C: Check for Errors**
If the server doesn't start, you might see errors. Common issues:
- Missing dependencies: Run `npm install`
- Port conflict: The server will try the next port automatically
- Syntax errors: Check the terminal for error messages

### Step 3: Verify Server is Running

After starting, you should see:
```
VITE v5.x.x  ready in XXX ms

➜  Local:   http://localhost:3000/
➜  Network: http://192.168.x.x:3000/
```

### Step 4: Check What Port is Actually Used

If port 3000 is busy, Vite will use the next available port. Check the terminal output for the actual port number.

## Common Issues

### Issue: Server starts but immediately crashes
**Check:**
1. Open browser console (F12) - are there JavaScript errors?
2. Check terminal for build errors
3. Try: `npm install` to reinstall dependencies

### Issue: "Cannot find module" errors
**Fix:**
```cmd
npm install
```

### Issue: Port 3000 is busy
**The server will automatically use 3001, 3002, etc.**
Check the terminal output for the actual port.

### Issue: Windows Firewall blocking
1. Go to Windows Security → Firewall
2. Allow Node.js through firewall
3. Or temporarily disable firewall to test

## Quick Test

1. Open Command Prompt
2. Run: `cd "E:\Portfolio development\Netify"`
3. Run: `npm run dev`
4. Wait 5-10 seconds
5. Check terminal for the URL
6. Open that URL in browser

## Still Not Working?

Share:
1. The exact output from `npm run dev`
2. Any error messages you see
3. What happens when you try to start the server

