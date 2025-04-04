#!/bin/bash

set -e

echo "🔧 Bootstrapping development environment..."

# === 0. Ensure folder structure ===
echo "📁 Creating folder structure (if needed)..."
mkdir -p ~/projects/dev-setup/{dotfiles,templates,docker,scripts}
mkdir -p ~/.config

# === 1. Symlink dotfiles ===

link_file() {
    local src=$1
    local dest=$2

    if [[ -e "$dest" && ! -L "$dest" ]]; then
        echo "⚠️  $dest exists and is not a symlink. Skipping to avoid overwriting."
    else
        echo "🔗 Linking $src → $dest"
        ln -sf "$src" "$dest"
    fi
}
echo "🔗 Linking dotfiles..."
link_file ~/projects/dev-setup/dotfiles/.zshrc ~/.zshrc
link_file ~/projects/dev-setup/dotfiles/starship.toml ~/.config/starship.toml

# === 2. Ensure Starship is installed ===

if ! command -v starship &> /dev/null; then
    echo "🌠 Installing Starship..."
    curl -sS https://starship.rs/install.sh | sh -s -- -y
else
    echo "✅ Starship already installed"
fi

# === 3. VS Code settings placeholder ===
echo "💻 [TODO] Sync VS Code settings manually or via dotfiles."

# === 4. Source Zsh config ===
echo "♻️ Reloading Zsh config..."
source ~/.zshrc

echo "✅ Bootstrap complete!"