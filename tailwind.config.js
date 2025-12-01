/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#0ea5a4',
        accent: '#0f1724',
        muted: '#6b7280',
        gold: '#f59e0b',
      },
    },
  },
  plugins: [],
}

