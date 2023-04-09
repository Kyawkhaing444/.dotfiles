# Install Homebrew
```bash
/bin/bash -c "$(curl -fssl https://raw.githubusercontent.com/homebrew/install/master/install.sh)"
```

# Update Homebrew and install necessary packages
```bash
brew update
brew upgrade
brew install git yadm zsh vim tmux
```

# Clone your dotfiles repository and set up dotfiles with YADM
```bash
yadm clone https://github.com/Kyawkhaing444/.dotfiles.git
```

# Run install script
```bash
bash "$HOME/.dotfiles/install.sh"
```

