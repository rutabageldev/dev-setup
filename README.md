# 💻 Personal Dev Environment

This repository contains the configuration, tooling, and starter templates that power my personal development environment. It's designed to be portable, repeatable, and useful across machines.

## 📁 Directory Structure

- `dotfiles/` – Shell, Git, and CLI tool config files (e.g. `.zshrc`, `starship.toml`)
- `templates/` – Project scaffolding for Python, Node.js, and others
- `docker/` – Reusable Docker Compose files for local dev services (e.g., Postgres)
- `scripts/` – Utilities, setup scripts, and bootstrapping helpers

## 🚀 Usage

### 1. Clone this repo

```bash
git clone git@github.com:yourusername/dev-setup.git ~/projects/dev-setup
```

### 2. Apply dotfile

```bash
ln -sf ~/projects/dev-setup/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
```

### 3. Use project templates

```bash
cp -r templates/python-starter new-project-name
cd new-project-name
```
## 🛠️ Roadmap
- [ ] Add Python project starter template
  - [ ] venv setup script
  - [ ] Pre-configured `pytest`, `black`, `pre-commit`
- [ ] Add Node.js project starter template
  - [ ] `eslint`, `prettier`, `.nvmrc`, `.env.example`
- [ ] Create Docker Compose templates
  - [ ] Postgres + pgAdmin
  - [ ] Redis
- [ ] Build bootstrap setup script
  - [ ] Symlink dotfiles
  - [ ] Install Starship
  - [ ] Pull VS Code settings
- [ ] Automate tasks using `just` or `make`
- [ ] Sync and version dotfiles
  - [ ] `.zshrc`, `.gitconfig`, `starship.toml`
- [ ] Add VS Code settings sync
- [ ] Add installation instructions for new machines
- [ ] Prepare for public release (optional)
  - [ ] Add license
  - [ ] Clean up personal info
