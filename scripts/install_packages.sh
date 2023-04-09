#!/bin/bash

# Set the app directory for cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Tap Homebrew
brew tap "homebrew/bundle"
brew tap "homebrew/cask"
brew tap "homebrew/cask-fonts"
brew tap "homebrew/cask-versions"
brew tap "homebrew/core"
brew tap "homebrew/services"
brew tap "civo/tools"
brew tap "anchore/grype"
brew tap "jesseduffield/lazygit"
brew tap "romkatv/powerlevel10k"

# System monitoring, trials
brew install --cask macs-fan-control istat-menus turbo-boost-switcher

# Fonts
brew install --cask font-hack-nerd-font

# System
brew install mas curl wget git vim openssl coreutils moreutils findutils binutils rename gnu-sed gnu-tar gawk gnutls gnu-indent gnu-getopt tree htop pidof pstree grep openssh rsync ssh-copy-id screen gmp nmap socat rlwrap dnstracer sslscan watch neovim

# Ops
brew install kind awscli ansible hcloud
brew install --cask google-cloud-sdk
brew install jsonnet jsonnet-bundler tfenv civo grype docker-compose lima podman

# Images, Audio, Video
brew install imagemagick gifsicle gifify ffmpeg

# Terminal Tooling
brew install zsh zsh-completions zsh-syntax-highlighting romkatv/powerlevel10k/powerlevel10k zsh-autosuggestions zsh-history-substring-search tldr htop fzf ripgrep lnav

# Archive & Git
brew install xz p7zip git git-lfs tig hub jesseduffield/lazygit/lazygit lazygit git-delta

# Extract rpm file content with rpm2cpio *.rpm | cpio -ivd
brew install rpm2cpio

# JSON
brew install jq jo

# Dev
brew install ruby yarn rbenv python pyenv go cmake boost openjdk rust
brew install --cask visual-studio-code docker rectangle
brew install java nvm pnpm graphicsmagick commitizen cmatrix vips

# Design
brew install --cask figma

# GitLab Pages
brew install hugo

# Productivity
brew install koekeishiya/formulae/yabai koekeishiya/formulae/skhd

# Browser and other necessary apps
brew install --cask bitwarden google-chrome firefox brave-browser iterm2 slack discord vlc calibre imageoptim maccy obs gimp inkscape handbrake spotify raycast notion telegram cloudflare-warp zoom unzip fork postman warp clickup microsoft-teams microsoft-outlook

