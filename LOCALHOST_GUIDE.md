# Localhost Hosting Guide

## Quick Start

Your application is configured to run on **localhost:3000** by default.

### Method 1: Using npm (Recommended)

1. **Start the development server:**
   ```bash
   cd "E:\Portfolio development\Netify"
   npm run dev
   ```

2. **Access the application:**
   - The browser should open automatically
   - Or manually visit: **http://localhost:3000**
   - Or use your local IP: **http://192.168.x.x:3000** (for network access)

### Method 2: Using the Batch File

Double-click `start-dev.bat` in the project folder, or run:
```bash
start-dev.bat
```

### Method 3: Build and Preview Production Version

1. **Build for production:**
   ```bash
   npm run build
   ```

2. **Preview the production build:**
   ```bash
   npm run preview
   ```
   - This will start a preview server (usually on port 4173)
   - Visit: **http://localhost:4173**

## Configuration

Your `vite.config.js` is configured with:
- **Port:** 3000
- **Host:** true (accessible from network)
- **Auto-open:** true (browser opens automatically)

## Troubleshooting

### Port Already in Use
If port 3000 is busy, Vite will automatically try the next available port (3001, 3002, etc.). Check the terminal output for the actual port.

### Can't Access from Network
- Make sure Windows Firewall allows Node.js
- Check that `host: true` is set in `vite.config.js` (already configured)

### Server Not Starting
1. Check if Node.js is installed: `node --version` (should be 16+)
2. Install dependencies: `npm install`
3. Check for errors in the terminal

## Development vs Production

- **Development (`npm run dev`):**
  - Fast hot-reload
  - Source maps for debugging
  - Runs on port 3000
  - Accessible at: http://localhost:3000

- **Production (`npm run build` + `npm run preview`):**
  - Optimized and minified
  - Smaller file sizes
  - Runs on port 4173 (preview)
  - Accessible at: http://localhost:4173

## Network Access

Since `host: true` is enabled, you can access the app from other devices on your network:
- Find your local IP: `ipconfig` (Windows) or `ifconfig` (Mac/Linux)
- Access from other devices: `http://YOUR_IP:5173`

Example: If your IP is 192.168.1.100, access it at `http://192.168.1.100:5173`

