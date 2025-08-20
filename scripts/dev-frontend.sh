
#!/usr/bin/env bash
# Simple local server for the frontend (Linux/macOS)
cd "$(dirname "$0")/../frontend" || exit 1
python3 -m http.server 8080
echo "Open http://localhost:8080"
