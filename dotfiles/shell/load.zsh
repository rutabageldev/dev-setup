FILES=("aliases.zsh" "exports.zsh" "functions.zsh" "platforms.zsh")

for file in "${FILES[@]}"; do
    fullpath="$HOME/projects/dev-setup/dotfiles/shell/$file"
    if [ -f "$fullpath" ]; then
        source "$fullpath"
        [[ "$DOTFILES_DEBUG" == "true" ]] && echo "✅ Loaded $file"
    else
        [[ "$DOTFILES_DEBUG" == "true" ]] && echo "❌ Skipped $file (not found)"
    fi
done
