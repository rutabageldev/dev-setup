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

# === 2. Create default files if missing ===

readme_path=README.md
gitignore_path=.gitignore

echo "📄 Ensuring default files..."

if [[ ! -f "$readme_path" ]]; then
    echo "# Project Title" > "$readme_path"
    echo "" >> "$readme_path"
    echo "Brief description of the project." >> "$readme_path"
    echo "📄 Created $readme_path"
else
    echo "✅ $readme_path already exists"
fi

if [[ ! -f "$gitignore_path" ]]; then
    cat <<EOL > "$gitignore_path"
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[cod]
*.so

# Virtual envrionment
venv/

# Environment variables
.env

# IDEs and editors
.vscode/
.idea/

# OS
.DS_Store
EOL
    echo "📄 Created $gitignore_path"
else
    echo "✅ $gitignore_path already exists"
fi

# === 2. VS Code settings placeholder ===
echo "💻 [TODO] Sync VS Code settings manually or via dotfiles."

echo "✅ Bootstrap complete!"