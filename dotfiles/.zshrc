# Path to Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

COMPLETION_WAITING_DOTS="true"

# Load plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"

# === Load Custom Shell Config from dev-setup ===
export DOTFILES="$HOME/projects/dev-setup/dotfiles"
export DOTFILES_DEBUG=true

if [ -f "$DOTFILES/shell/load.zsh" ]; then
    source "$DOTFILES/shell/load.zsh"
    [[ "$DOTFILES_DEBUG" == "true" ]] && echo "✅ Loaded shell config from $DOTFILES/shell"
fi
