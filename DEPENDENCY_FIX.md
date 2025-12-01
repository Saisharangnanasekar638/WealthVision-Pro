# Fix: Dependency Installation Error on Netlify

## 🚨 Error
```
Failed during stage 'Install dependencies': dependency_installation script returned non-zero exit code: 1
```

## 🔍 Possible Causes

1. **package-lock.json incompatibility** - Generated with different npm version
2. **Missing src/ folder** - Source files not committed
3. **Node/npm version mismatch** - Netlify using wrong versions

## ✅ Solutions

### Solution 1: Regenerate package-lock.json (Recommended)

The `package-lock.json` might be incompatible. Regenerate it:

```cmd
cd "E:\Portfolio development\Netify"
del package-lock.json
npm install
git add package-lock.json
git commit -m "Regenerate package-lock.json for Netlify compatibility"
git push
```

### Solution 2: Verify All Files Are Committed

Make sure the `src/` folder is in GitHub:

1. Go to: `https://github.com/Saisharangnanasekar638/WealthVision-Pro/tree/main/src`
2. Verify you see:
   - `App.jsx`
   - `index.jsx`
   - `components/` folder
   - `utils/` folder

If `src/` is missing, commit it:

```cmd
git add src/
git commit -m "Add src folder"
git push
```

### Solution 3: Check Netlify Logs for Specific Error

1. Go to Netlify Dashboard → Deploys
2. Click on the failed deploy
3. Expand the logs
4. Look for the **exact error message** after "Starting to install dependencies"
5. Share that error - it will tell us what package is failing

### Solution 4: Use npm ci Instead

Update `netlify.toml` to use `npm ci` (clean install):

```toml
[build]
  publish = "dist"
  command = "npm ci && npm run build"
```

But first, make sure `package-lock.json` is committed and up-to-date.

## 📋 Quick Fix Steps

### Step 1: Test Locally First

```cmd
cd "E:\Portfolio development\Netify"
npm install
npm run build
```

If this works locally, the issue is with Netlify configuration.
If this fails locally, fix those errors first.

### Step 2: Regenerate Lock File

```cmd
del package-lock.json
npm install
```

### Step 3: Commit Everything

```cmd
git add .
git commit -m "Fix: Regenerate package-lock.json and ensure all files committed"
git push
```

### Step 4: Check Netlify Settings

1. Netlify Dashboard → Site settings → Build & deploy
2. Verify:
   - **Base directory:** (empty)
   - **Build command:** `npm run build`
   - **Publish directory:** `dist`

## 🔍 Most Common Issues

### Issue: "Cannot find module" or "Missing dependency"
**Cause:** `src/` folder or files not committed to GitHub
**Fix:** 
```cmd
git add src/
git commit -m "Add source files"
git push
```

### Issue: "lockfileVersion" error
**Cause:** package-lock.json generated with different npm version
**Fix:** Regenerate package-lock.json (Solution 1 above)

### Issue: "Peer dependency" warnings
**Cause:** Version conflicts
**Fix:** Usually safe to ignore, but check Netlify logs

## 📝 Files That MUST Be in GitHub

Verify these exist in your repo:
- ✅ `package.json` (root)
- ✅ `package-lock.json` (root) - **Make sure this is committed**
- ✅ `src/` folder (with ALL files)
- ✅ `public/_redirects`
- ✅ `netlify.toml`
- ✅ `.nvmrc`
- ✅ `index.html`
- ✅ `vite.config.js`

## 🎯 Next Steps

1. **Regenerate package-lock.json** (Solution 1)
2. **Verify src/ folder is committed**
3. **Push changes**
4. **Check Netlify logs** for the exact error
5. **Share the specific error message** if it still fails

---

**After regenerating package-lock.json and pushing, Netlify should redeploy automatically.**

