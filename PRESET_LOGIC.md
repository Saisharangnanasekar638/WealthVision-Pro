# Asset Preset Logic Explanation

## How It Works

When you click a preset button (Aggressive, Balanced, or Conservative):

### Step 1: Identify Asset Types
- **Preset Assets**: Assets whose names match preset asset names (case-insensitive)
  - Examples: "Equity", "Debt", "Gold" (or "equity", "EQUITY", etc.)
- **User-Added Assets**: Assets with names that don't match any preset asset
  - Examples: "Real Estate", "Crypto", "Bonds", etc.
- **Empty Assets**: Assets with empty or whitespace-only names are skipped

### Step 2: Apply Preset
- **Preset Assets**: Get updated with preset allocations and returns
- **User-Added Assets**: Preserved with 0% allocation (you can adjust manually)
- **Missing Preset Assets**: Added if they weren't in your current list

### Step 3: Normalize
- Preset assets are normalized to sum to exactly 100%
- User-added assets remain at 0%

## Example Scenario

**Before clicking preset:**
- Equity: 50%
- Debt: 30%
- Gold: 20%
- Real Estate: 0% (user-added)

**After clicking "Aggressive" preset:**
- Equity: 80% (updated from preset)
- Debt: 10% (updated from preset)
- Gold: 10% (updated from preset)
- Real Estate: 0% (preserved, user-added)

## Testing Steps

1. Start with default assets (Equity, Debt, Gold)
2. Click "+ Add Asset"
3. Type a name like "Real Estate" in the new asset row
4. Click any preset button (Aggressive, Balanced, or Conservative)
5. Verify:
   - Preset assets (Equity, Debt, Gold) get updated allocations
   - Your "Real Estate" asset is still there with 0% allocation

## Troubleshooting

If presets aren't working:
1. Make sure asset names match preset names (case doesn't matter)
2. Empty-named assets are automatically skipped
3. Check browser console for any JavaScript errors
4. Try refreshing the page

