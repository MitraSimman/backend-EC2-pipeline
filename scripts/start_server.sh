#!/bin/bash
cd /opt/flask-app
echo "Starting Flask application..."
# Kill any existing Flask processes
pkill -f "python3.*app.py" || true
# Start the Flask application in the background
nohup python3 app.py > /var/log/flask-app.log 2>&1 &
echo "Flask application started successfully"
echo "Application logs can be found at /var/log/flask-app.log"