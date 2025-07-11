#!/bin/bash
echo "Stopping Flask application..."
# Kill any existing Flask processes
pkill -f "python3.*app.py" || true
echo "Flask application stopped"