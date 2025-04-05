#!/bin/bash

set -e

echo "🐍 Setting up Python virtual environment..."

python3 -m venv .venv
source .venv/bin/activate

echo "📦 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

echo "✅ Environment ready. Activate it with: source .venv/bin/activate"
