# My Dotfiles

Personal configuration files for terminal and development setup.

## Structure
```
dotfiles/
├── terminal/       # Terminal emulator configs
│   └── wezterm/    # WezTerm configuration
├── shell/          # Shell configuration (Zsh)
├── nvim/           # Neovim configuration
└── install.sh      # Automated setup script
```

## Quick Start
```bash
# Clone this repo
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Run automated install
./install.sh
```

## Manual Installation

See individual READMEs:
- [Terminal (WezTerm)](terminal/README.md)
- [Shell (Zsh)](shell/README.md)
- [Neovim](nvim/README.md)

## What's Included

- **WezTerm**: GPU-accelerated terminal with Catppuccin theme
- **Zsh**: Powerlevel10k theme with modern enhancements
- **Neovim**: Full IDE setup with LSP and Treesitter
- **Modern CLI tools**: eza, zoxide, ripgrep

## Requirements

- macOS
- Homebrew

## Updating
```bash
cd ~/dotfiles
git pull

# Update packages
brew update && brew upgrade

# Update Neovim plugins
nvim
# Then run: :Lazy sync
```

## Security

This repository includes automated secret scanning via GitHub Actions to prevent accidental commits of sensitive data.
