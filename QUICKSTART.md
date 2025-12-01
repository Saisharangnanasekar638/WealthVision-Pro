# Quick Start Guide

## Installation & Setup

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Start development server:**
   ```bash
   npm run dev
   ```
   The app will open at `http://localhost:5173`

3. **Build for production:**
   ```bash
   npm run build
   ```

## What's Been Built

✅ **Complete React App Structure**
- React 18 with Vite
- Tailwind CSS for styling
- Framer Motion for smooth animations

✅ **Three Main Modules:**
1. **Goal Planner** - Calculate required corpus and SIP/lump-sum
2. **Portfolio Projection** - Project future values of existing holdings
3. **Allocation Optimizer** - Compare and optimize asset allocation

✅ **Key Features:**
- Tab-based navigation with smooth transitions
- Interactive charts (Recharts)
- Monte Carlo risk simulation
- PDF and CSV export
- Asset allocation presets
- Responsive design

✅ **Utilities:**
- Financial calculations (FV, SIP, CAGR, etc.)
- Monte Carlo simulation
- Export functions (PDF/CSV)

✅ **Netlify Ready:**
- `netlify.toml` configured
- `public/_redirects` for React Router
- Serverless function for OpenAI (optional)

## Next Steps

1. **Test locally:**
   - Run `npm run dev`
   - Test all three modules
   - Verify calculations
   - Test export functionality

2. **Deploy to Netlify:**
   - Push to GitHub
   - Connect to Netlify
   - Set build command: `npm run build`
   - Set publish directory: `build`
   - Add `OPENAI_API_KEY` env var (if using AI features)

3. **Optional Enhancements:**
   - Add Python forecasting API (see roadmap)
   - Customize styling
   - Add more asset presets
   - Add data persistence (localStorage)

## File Structure

```
src/
├── components/        # React components
├── utils/            # Financial & export utilities
├── App.jsx           # Main app component
├── index.jsx         # Entry point
└── index.css         # Tailwind imports

netlify/
└── functions/        # Serverless functions
```

## Notes

- Old vanilla JS files (`function/app.js`, old `index.html`) are kept for reference
- The new React app uses `src/index.jsx` and `index.html` (Vite template)
- All calculations are client-side (no backend required)
- Monte Carlo simulation runs in browser (5000 simulations)

## Troubleshooting

**Build errors?**
- Ensure Node.js 16+ is installed
- Delete `node_modules` and run `npm install` again

**PDF export not working?**
- Ensure `html2canvas` and `jspdf` are installed
- Check browser console for errors

**Charts not rendering?**
- Verify Recharts is installed: `npm install recharts`

