#!/bin/bash

set -e

echo "🐍 Setting up Python virtual environment..."

python3 -m venv .venv
source .venv/bin/activate

echo "📦 Installing dependencies..."
pip install --upgrade pip
pip install -r requirements.txt

# === 3. Run smoke test ===
echo "🧪 Running smoke test..."
if python3 -m src.main; then
    echo "✅ Environment ready. Activate it with: source .venv/bin/activate"
 else
    echo "❌ Virtual environment setup failed"
    exit 1
fi