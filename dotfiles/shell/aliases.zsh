# Shortcuts and quality-of-life aliases

alias ll='ls -lah'
alias gs='git status'
alias ga='git add .'
alias gc='git commit -m'
alias gp='git push -u origin main'

# Launch local Python virtual environment

function venv-launch() {
    local venv_path="./.venv/bin/activate"
    if [[ -f "$venv_path" ]]; then
        source "$venv_path"
        echo "✅ Activated virtual environment at $venv_path"
    else
        echo "❌ No .venv found in $(pwd)"
    fi
} 