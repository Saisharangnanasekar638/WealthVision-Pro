# Financial Portfolio Planner

A modern React-based web application for planning, projecting, and optimizing financial portfolios. Built with React, Vite, Tailwind CSS, Framer Motion, and Recharts.

## Features

### Module 1: Goal Planner
- Calculate required corpus based on future expenses
- Determine required SIP or lump-sum investment
- Asset allocation presets (Aggressive, Balanced, Conservative)
- Growth projection charts
- Portfolio return calculations

### Module 2: Portfolio Projection
- Project future value of existing holdings
- Support for both lump-sum and SIP investments
- Detailed breakdown by asset
- Visual comparison charts
- "How it works" explanation

### Module 3: Allocation Optimizer
- Compare portfolio return vs target return
- Detailed allocation analysis with amount invested
- Monte Carlo risk simulation
- Recommendations for optimization
- Export to PDF and CSV

## Tech Stack

- **Frontend**: React 18 with Vite
- **Styling**: Tailwind CSS
- **Animations**: Framer Motion
- **Charts**: Recharts
- **PDF Export**: html2pdf.js
- **Icons**: Lucide React
- **Hosting**: Netlify (frontend + serverless functions)

## Getting Started

### Prerequisites

- Node.js 16+ and npm

### Installation

1. Clone the repository
2. Install dependencies:
   ```bash
   npm install
   ```

3. Start development server:
   ```bash
   npm run dev
   ```

4. Build for production:
   ```bash
   npm run build
   ```

## Project Structure

```
/project-root
├─ public/
│  └─ _redirects
├─ netlify/
│  └─ functions/
│     └─ openai.js
├─ src/
│  ├─ components/
│  │  ├─ Tabs.jsx
│  │  ├─ Header.jsx
│  │  ├─ Module1.jsx
│  │  ├─ Module2.jsx
│  │  ├─ Module3.jsx
│  │  ├─ HowItWorks.jsx
│  │  ├─ ExportButtons.jsx
│  │  └─ MonteCarloChart.jsx
│  ├─ utils/
│  │  ├─ finance.js
│  │  ├─ montecarlo.js
│  │  └─ export.js
│  ├─ App.jsx
│  ├─ index.jsx
│  ├─ index.css
│  └─ constants.js
├─ package.json
├─ netlify.toml
└─ README.md
```

## Deployment to Netlify

1. Push your code to GitHub
2. In Netlify:
   - Click "New site from Git"
   - Connect your GitHub repository
   - Build settings:
     - Build command: `npm run build`
     - Publish directory: `build`
   - Add environment variables (if using OpenAI):
     - `OPENAI_API_KEY`: Your OpenAI API key

3. Deploy!

The `netlify.toml` and `public/_redirects` files are already configured for React Router support.

## Environment Variables

- `OPENAI_API_KEY` (optional): For AI-powered summary features in Netlify functions

## Features in Detail

### Financial Calculations
- Future Value of Lump Sum: `FV = PV × (1 + r)^n`
- Future Value of SIP: Uses compound interest formula for monthly investments
- CAGR calculation
- Weighted portfolio returns

### Monte Carlo Simulation
- Risk analysis with percentile bands (P10, P25, P50, P75, P90)
- Distribution visualization
- Configurable standard deviation

### Export Functionality
- PDF export of report area
- CSV export of calculation data
- Formatted for easy sharing

## License

MIT

## Disclaimer

This tool is for educational and planning purposes only. It is not financial advice. Always consult with a qualified financial advisor before making investment decisions.

