#!/bin/bash

# Environment
sudo pacman -S hyprland
sudo pacman -S hyprpaper
sudo pacman -S hypridle
sudo pacman -S hyprlock
sudo pacman -S waybar
sudo pacman -S swaync  # notifications

# Greeter Theme
qt4-svg qt6-declarative 

# Audio & Bluetooth
sudo pacman -S pipewire, pipewire-pulse, wireplumber
sudo pacman -S bluez, bluez-libs, bluez-utils

# Main Apps
sudo pacman -S kitty   # shell
sudo pacman -S nvim    # editor
sudo pacman -S yazi    # fileManager
sudo pacman -S firefox # browser

# KDE Backups Apps
sudo pacman -S kate    # editor
sudo pacman -S dolphin # fileManager

sudo pacman -S stow
# stow
stow hyprland
stow swaync
stow waybar
stow yzai
stow nvim
stow bash

# Greeter
sudo pacman -S sddm layer-shell-qt layer-shell-qt5
sudo cp -f ./sddm.conf /etc/sddm.conf

# Greeter Theme
sudo pacman -S qt6 qt6-svg qt6-multimedia
sudo git clone -b master --depth 1 https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo mv -r /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
sudo cp ~/dotfiles/greeter.desktop /usr/share/sddm/themes/sddm-astronaut-theme/metadata.desktop
sudo cp ~/dotfiles/greeter.conf /usr/share/sddm/themes/sddm-astronaut-theme/Themes/hyprland.conf
sudo cp ~/.config/hypr/background.jpg /usr/share/sddm/themes/sddm-astronaut-theme/Backgrounds/hyprland.jpg
printf "[Theme]\nCurrent=sddm-astronaut-theme" | sudo tee -a /etc/sddm.conf > /dev/null
