#!/bin/bash
cd /opt/flask-app
echo "Installing Python dependencies..."
if [ -f requirements.txt ]; then
    pip3 install -r requirements.txt
else
    echo "No requirements.txt found, installing Flask directly"
    pip3 install flask
fi
chmod +x scripts/*.sh
echo "Dependencies installed successfully"