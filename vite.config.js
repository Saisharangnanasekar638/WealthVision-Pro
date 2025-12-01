import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // This enables network access
    port: 3000, // Changed to port 3000
    strictPort: false, // Will try next port if 3000 is busy
    open: true, // Auto-open browser
  }
})

