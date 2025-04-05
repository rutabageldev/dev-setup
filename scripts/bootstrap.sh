#!/bin/bash
#-------------------------
# Project-level bootstrap script.
# Creates standard folder structure and installs project-local tooling.
# Does NOT modify global environment or shell config (e.g., .zshrc or starship.toml).

set -e

echo "🔧 Bootstrapping development environment..."

# === 1. Ensure folder structure ===
echo "📁 Creating folder structure (if needed)..."
mkdir -p ~/projects/dev-setup/{dotfiles,templates,docker,scripts}
mkdir -p ~/.config

# === 2. VS Code settings placeholder ===
echo "💻 [TODO] Sync VS Code settings manually or via dotfiles."

echo "✅ Bootstrap complete!"