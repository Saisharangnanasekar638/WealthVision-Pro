// Quick test to see if we can start a simple server
const http = require('http');

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' });
  res.end('<h1>Server is working! If you see this, Node.js can create servers.</h1>');
});

server.listen(3000, '0.0.0.0', () => {
  console.log('Test server running on http://localhost:3000');
  console.log('If you can access this, the issue is with Vite, not Node.js');
});

