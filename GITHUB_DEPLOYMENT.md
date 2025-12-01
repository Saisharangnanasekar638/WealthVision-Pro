# GitHub & Netlify Deployment Guide

## 📁 Files to Include in GitHub Repository

### ✅ **MUST INCLUDE** (Essential Files)

```
✅ package.json          - Dependencies and scripts
✅ package-lock.json     - Locked dependency versions
✅ vite.config.js        - Vite configuration
✅ netlify.toml          - Netlify deployment config
✅ index.html            - Main HTML file
✅ tailwind.config.js    - Tailwind CSS config
✅ postcss.config.js     - PostCSS config
✅ public/_redirects     - Netlify redirects for React Router
✅ src/                  - All source code (entire folder)
   ✅ src/App.jsx
   ✅ src/index.jsx
   ✅ src/index.css
   ✅ src/constants.js
   ✅ src/components/    - All component files
   ✅ src/utils/         - All utility files
✅ README.md             - Project documentation
✅ .gitignore            - Git ignore rules
```

### ❌ **DO NOT INCLUDE** (Already in .gitignore)

```
❌ node_modules/         - Will be installed via npm install
❌ dist/                 - Build output (generated)
❌ build/                - Build output (generated)
❌ .env files            - Environment variables (if any)
❌ *.log files           - Log files
❌ .vscode/              - Editor settings (optional)
❌ .idea/                - IDE settings (optional)
```

### 📝 **OPTIONAL** (You can include or exclude)

```
? *.md files (except README.md) - Documentation files
  - LOCALHOST_GUIDE.md
  - TROUBLESHOOTING.md
  - HOST_TROUBLESHOOTING.md
  - etc.
? *.bat files - Windows batch files for local dev
  - start-dev.bat
  - start-server.bat
  - SIMPLE_START.bat
? test-server.js - Test file
```

**Recommendation:** Include README.md, exclude other .md and .bat files (they're for local development only).

---

## 🚀 Step-by-Step: Push to GitHub

### Step 1: Initialize Git (if not already done)

Open Command Prompt in your project folder:

```cmd
cd "E:\Portfolio development\Netify"
git init
```

### Step 2: Add Files to Git

```cmd
git add .
```

Or add specific files only:

```cmd
git add package.json package-lock.json vite.config.js netlify.toml index.html
git add tailwind.config.js postcss.config.js
git add public/ src/ README.md .gitignore
```

### Step 3: Commit Files

```cmd
git commit -m "Initial commit: Financial Portfolio Planner"
```

### Step 4: Create GitHub Repository

1. Go to https://github.com
2. Click **"New repository"** (or the **+** icon)
3. Repository name: `financial-portfolio-planner` (or your choice)
4. Description: "A React-based financial portfolio planning tool"
5. Choose **Public** or **Private**
6. **DO NOT** initialize with README, .gitignore, or license (we already have these)
7. Click **"Create repository"**

### Step 5: Connect and Push

GitHub will show you commands. Use these:

```cmd
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git
git branch -M main
git push -u origin main
```

Replace:
- `YOUR_USERNAME` with your GitHub username
- `YOUR_REPO_NAME` with your repository name

---

## 🌐 Step-by-Step: Deploy to Netlify

### Method 1: Via Netlify Dashboard (Recommended)

1. **Go to Netlify:**
   - Visit https://app.netlify.com
   - Sign up/Login (you can use GitHub account)

2. **Import from Git:**
   - Click **"Add new site"** → **"Import an existing project"**
   - Click **"Deploy with GitHub"**
   - Authorize Netlify to access your GitHub
   - Select your repository: `financial-portfolio-planner`

3. **Build Settings (Auto-detected):**
   - **Build command:** `npm run build`
   - **Publish directory:** `dist`
   - **Base directory:** (leave empty)

4. **Deploy:**
   - Click **"Deploy site"**
   - Wait 2-3 minutes for build to complete

5. **Your Site is Live!**
   - Netlify will give you a URL like: `https://your-site-name.netlify.app`
   - You can customize the name in Site settings

### Method 2: Via Netlify CLI

```cmd
# Install Netlify CLI globally
npm install -g netlify-cli

# Login to Netlify
netlify login

# Deploy
cd "E:\Portfolio development\Netify"
netlify deploy --prod
```

---

## ✅ Verify Deployment

1. **Check Build Logs:**
   - In Netlify dashboard, go to **"Deploys"** tab
   - Check for any errors (should show "Published" if successful)

2. **Test Your Site:**
   - Visit your Netlify URL
   - Test all three modules
   - Check if charts load correctly
   - Test PDF/CSV export

3. **Common Issues:**
   - **Build fails:** Check Node.js version (Netlify uses Node 18 by default)
   - **404 errors:** Ensure `public/_redirects` file exists
   - **Blank page:** Check browser console for errors

---

## 🔧 Netlify Configuration

Your `netlify.toml` is already configured:

```toml
[build]
  publish = "dist"        # Vite outputs to 'dist'
  command = "npm run build"

[functions]
  directory = "netlify/functions"

[[redirects]]
  from = "/*"
  to = "/index.html"
  status = 200
```

This ensures:
- ✅ Build outputs to correct directory
- ✅ React Router works (SPA routing)
- ✅ Serverless functions work (if you add any)

---

## 🔐 Environment Variables (Optional)

If you need environment variables (e.g., API keys):

1. In Netlify Dashboard:
   - Go to **Site settings** → **Environment variables**
   - Click **"Add variable"**
   - Add: `OPENAI_API_KEY` = `your-key-here` (if using OpenAI functions)

2. In your code, use: `import.meta.env.VITE_OPENAI_API_KEY`

---

## 📋 Quick Checklist

Before pushing to GitHub:

- [ ] All source files are in `src/` folder
- [ ] `package.json` has all dependencies
- [ ] `netlify.toml` is configured correctly
- [ ] `public/_redirects` exists
- [ ] `.gitignore` excludes `node_modules/` and `dist/`
- [ ] `README.md` is updated (optional but recommended)

Before deploying:

- [ ] Code is pushed to GitHub
- [ ] Repository is connected to Netlify
- [ ] Build settings are correct (`dist` folder)
- [ ] No build errors in Netlify logs

---

## 🎯 Your Repository Structure Should Look Like:

```
financial-portfolio-planner/
├── .gitignore
├── index.html
├── netlify.toml
├── package.json
├── package-lock.json
├── postcss.config.js
├── README.md
├── tailwind.config.js
├── vite.config.js
├── public/
│   └── _redirects
├── src/
│   ├── App.jsx
│   ├── index.jsx
│   ├── index.css
│   ├── constants.js
│   ├── components/
│   │   ├── ExportButtons.jsx
│   │   ├── Header.jsx
│   │   ├── HowItWorks.jsx
│   │   ├── HowItWorksModule1.jsx
│   │   ├── HowItWorksModule3.jsx
│   │   ├── Module1.jsx
│   │   ├── Module2.jsx
│   │   ├── Module3.jsx
│   │   ├── MonteCarloChart.jsx
│   │   └── Tabs.jsx
│   └── utils/
│       ├── export.js
│       ├── finance.js
│       └── montecarlo.js
└── netlify/
    └── functions/
        └── openai.js (optional)
```

---

## 🆘 Troubleshooting

### Build Fails on Netlify

1. **Check Node version:**
   - Netlify uses Node 18 by default
   - If needed, add to `netlify.toml`:
     ```toml
     [build.environment]
       NODE_VERSION = "18"
     ```

2. **Check build logs:**
   - Go to Netlify → Deploys → Click on failed deploy
   - Look for error messages

### Site Shows 404

- Ensure `public/_redirects` file exists with: `/* /index.html 200`

### Assets Not Loading

- Check that paths in code are relative (Vite handles this automatically)
- Clear browser cache

---

## 🎉 You're Done!

Once deployed, your site will be live at:
- **URL:** `https://your-site-name.netlify.app`
- **Auto-deploy:** Every push to `main` branch will trigger a new deployment
- **Custom domain:** You can add a custom domain in Netlify settings

Good luck with your deployment! 🚀

