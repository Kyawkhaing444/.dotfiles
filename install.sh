#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Update Homebrew and install necessary packages
brew update
brew upgrade
brew install git yadm zsh vim tmux

# Clone your dotfiles repository and set up dotfiles with YADM
yadm clone https://github.com/your-username/dotfiles.git

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Run the install_packages.sh script
bash "$HOME/dotfiles/scripts/install_packages.sh"

# Run the nerds_font.sh script
bash "$HOME/dotfiles/scripts/nerds_font.sh"

# Add any additional configuration, like setting up zsh as the default shell
chsh -s $(which zsh)

echo "Installation complete! Now, time to disable System Integrity Protection (SIP):"
echo ""
echo "1. Turn off your device."
echo "2. Boot into Recovery Mode:"
echo "   - Intel Macs: Hold down Command + R while booting your device."
echo "   - Apple Silicon Macs: Press and hold the power button until 'Loading startup options' appears, then click Options and Continue."
echo "3. In the menu bar, choose Utilities > Terminal"
echo "4. Run the following command based on your Mac type:"
echo "   - Apple Silicon macOS 13.x.x, 12.x.x:"
echo "     csrutil disable --with kext --with dtrace --with basesystem"
echo "   - Intel macOS 13.x.x, 12.x.x, 11.x.x:"
echo "     csrutil disable --with kext --with dtrace --with nvram --with basesystem"
echo "5. Reboot your Mac."
echo "6. For Apple Silicon Macs, enable non-Apple-signed arm64e binaries:"
echo "   Open a terminal and run the following command, then reboot:"
echo "   sudo nvram boot-args=-arm64e_preview_abi"
echo "7. Verify that SIP is disabled by running 'csrutil status'. It should return 'System Integrity Protection status: disabled.' or 'unknown' for partially disabled SIP."
echo "8. bash $HOME/dotfiles/scripts/yabai-skhd.sh"


