# Host Troubleshooting Guide

## Fixed Configuration

I've updated `vite.config.js` to use `host: '0.0.0.0'` which makes the server accessible on all network interfaces.

## How to Start the Server

### Method 1: Using Batch File (Easiest)
1. Double-click `start-dev.bat`
2. Wait for the server to start
3. Look for the URL in the terminal output

### Method 2: Using Command Prompt
```cmd
cd "E:\Portfolio development\Netify"
npm run dev
```

### Method 3: Using PowerShell
```powershell
cd "E:\Portfolio development\Netify"
npm run dev
```

## Accessing Your App

Once the server starts, you should see output like:
```
  VITE v5.x.x  ready in XXX ms

  ➜  Local:   http://localhost:3000/
  ➜  Network: http://192.168.x.x:3000/
```

### Local Access:
- **http://localhost:3000**
- **http://127.0.0.1:3000**

### Network Access (from other devices):
- Use the Network URL shown in terminal (e.g., `http://192.168.1.100:3000`)

## Common Issues & Solutions

### Issue 1: "Port 3000 is already in use"
**Solution:**
- The server will automatically try the next port (3001, 3002, etc.)
- Check the terminal for the actual port number
- Or kill the process using port 3000:
  ```cmd
  netstat -ano | findstr :3000
  taskkill /PID <PID_NUMBER> /F
  ```

### Issue 2: "Cannot GET /" or 404 errors
**Solution:**
- Make sure you're accessing the root URL: `http://localhost:3000`
- Don't add `/index.html` or other paths
- Check that `index.html` exists in the project root

### Issue 3: "Connection refused" or "This site can't be reached"
**Solutions:**
1. **Check if server is running:**
   - Look at the terminal - you should see "VITE ready"
   - If not, restart the server

2. **Check Windows Firewall:**
   - Windows might be blocking Node.js
   - Go to: Windows Security → Firewall & network protection
   - Allow Node.js through firewall if prompted

3. **Try different URL:**
   - Try `http://127.0.0.1:3000` instead of `localhost`
   - Try the Network URL from terminal output

4. **Check antivirus:**
   - Some antivirus software blocks local servers
   - Temporarily disable to test

### Issue 4: Server starts but page is blank
**Solutions:**
1. Open browser console (F12) and check for errors
2. Clear browser cache (Ctrl+Shift+Delete)
3. Try a different browser
4. Check terminal for build errors

### Issue 5: "npm run dev" command not found
**Solutions:**
1. Make sure you're in the project directory:
   ```cmd
   cd "E:\Portfolio development\Netify"
   ```

2. Install dependencies:
   ```cmd
   npm install
   ```

3. Check Node.js is installed:
   ```cmd
   node --version
   ```
   Should show v16 or higher

### Issue 6: Network access not working (can't access from phone/other device)
**Solutions:**
1. **Check the Network URL in terminal:**
   - Vite shows: `Network: http://192.168.x.x:3000/`
   - Use that exact URL from other devices

2. **Make sure devices are on same network:**
   - Both devices must be on the same Wi-Fi network

3. **Check Windows Firewall:**
   - Allow Node.js through Windows Firewall
   - Go to: Control Panel → Windows Defender Firewall → Allow an app

4. **Try disabling firewall temporarily:**
   - Only for testing - re-enable after

## Testing the Server

1. **Start the server** using one of the methods above
2. **Wait for "VITE ready"** message in terminal
3. **Open browser** and go to `http://localhost:3000`
4. **You should see** your Financial Portfolio Planner app

## Quick Test Commands

```cmd
# Check if port is in use
netstat -ano | findstr :3000

# Check Node.js version
node --version

# Check npm version
npm --version

# Reinstall dependencies (if needed)
npm install

# Clear npm cache (if having issues)
npm cache clean --force
```

## Still Not Working?

1. **Check terminal output** - Look for error messages
2. **Check browser console** (F12) - Look for JavaScript errors
3. **Try a different port** - Edit `vite.config.js` and change port to 3000 or 8080
4. **Restart your computer** - Sometimes helps with network issues

## Contact

If none of these solutions work, share:
- The exact error message from terminal
- The exact error from browser console (F12)
- What happens when you try to access the URL

