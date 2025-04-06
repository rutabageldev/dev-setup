# Detect platform and apply custom config

# Load platform-specific overrides
if grep -q Microsoft /proc/version 2>/dev/null; then
    export GIT_PLATFORM=WSL
    git config --global custom.platform "WSL"
    source ~/projects/dev-setup/dotfiles/wsl/.zshrc-wsl
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    export GIT_PLATFORM=LINUX
    git config --global custom.platform "LINUX"
    source ~/projects/dev-setup/dotfiles/linux/.zshrc-linux
elif [["$OSTYPE" == "darwin"* ]]; then
    export GIT_PLATFORM=MAC
    git config --global custom.platform "MAC"
    source ~/projects/dev-setup/dotfiles/mac/.zshrc-mac
fi