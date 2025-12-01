# Step-by-Step: How to Start the Server

## The Problem
You're getting "The system cannot find the path specified" because the commands need to be run separately.

## Solution: Run Commands One at a Time

### Method 1: Use Command Prompt (Step by Step)

1. **Open Command Prompt:**
   - Press `Win + R`
   - Type: `cmd`
   - Press Enter

2. **Navigate to the project (run this FIRST):**
   ```cmd
   cd /d "E:\Portfolio development\Netify"
   ```
   Press Enter and wait for it to complete.

3. **Verify you're in the right place:**
   ```cmd
   dir
   ```
   You should see files like `package.json`, `vite.config.js`, etc.

4. **Start the server (run this SECOND):**
   ```cmd
   npm run dev
   ```
   Press Enter and wait for the server to start.

### Method 2: Use the Batch File (Easiest)

**Just double-click `SIMPLE_START.bat`** in your project folder.

It will:
- Navigate to the correct directory
- Start the server automatically
- Show you the URL

### Method 3: Manual Navigation

If the path has spaces and is causing issues:

1. Open Command Prompt
2. Type: `E:` and press Enter
3. Type: `cd "Portfolio development\Netify"` and press Enter
4. Type: `npm run dev` and press Enter

## What You Should See

After `npm run dev`, wait 5-10 seconds and you should see:

```
VITE v5.x.x  ready in XXX ms

➜  Local:   http://localhost:3000/
➜  Network: http://192.168.x.x:3000/
```

Then open your browser to: **http://localhost:3000**

## Common Mistakes

❌ **Wrong:** Running both commands on one line
```cmd
cd /d "E:\Portfolio development\Netify" npm run dev
```

✅ **Correct:** Run them separately
```cmd
cd /d "E:\Portfolio development\Netify"
npm run dev
```

## Still Having Issues?

1. **Check if the folder exists:**
   - Open File Explorer
   - Navigate to: `E:\Portfolio development\Netify`
   - Make sure you can see `package.json` file

2. **Check if Node.js is installed:**
   ```cmd
   node --version
   ```
   Should show something like: `v18.x.x` or `v20.x.x`

3. **Try the batch file:**
   - Double-click `SIMPLE_START.bat`
   - It handles everything automatically

