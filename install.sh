#!/bin/bash

# Hyprland Dotfiles Installation Script
# This script will install all necessary packages and copy configs

set -e

echo "🎨 Hyprland Catppuccin Setup Installer"
echo "======================================"
echo ""

# Check if running Arch Linux
if ! command -v pacman &> /dev/null; then
    echo "⚠️  This script is designed for Arch Linux"
    echo "Please install packages manually for your distribution"
    exit 1
fi

echo "📦 Installing required packages..."
sudo pacman -S --needed hyprland waybar wofi kitty swaybg grim slurp wtype neofetch \
    nautilus papirus-icon-theme pavucontrol brightnessctl playerctl \
    ttf-liberation --noconfirm

echo ""
echo "🎨 Installing Catppuccin GTK theme..."
cd /tmp
curl -LO https://github.com/catppuccin/gtk/releases/latest/download/catppuccin-mocha-mauve-standard+default.zip
mkdir -p ~/.themes
unzip -q catppuccin-mocha-mauve-standard+default.zip -d ~/.themes/

echo ""
echo "💾 Backing up existing configs..."
BACKUP_DIR=~/.config/backup-$(date +%Y%m%d-%H%M%S)
mkdir -p $BACKUP_DIR

for dir in hypr waybar wofi kitty gtk-3.0 gtk-4.0; do
    if [ -d ~/.config/$dir ]; then
        echo "  Backing up ~/.config/$dir"
        mv ~/.config/$dir $BACKUP_DIR/
    fi
done

echo ""
echo "📁 Installing new configs..."
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Copy configs
mkdir -p ~/.config ~/.local/bin
cp -r "$SCRIPT_DIR/.config/"* ~/.config/
cp -r "$SCRIPT_DIR/.local/"* ~/.local/

# Make scripts executable
chmod +x ~/.local/bin/emoji-picker

echo ""
echo "🐚 Setting up shell..."
if ! grep -q "neofetch" ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# Show system info on terminal launch" >> ~/.bashrc
    echo "neofetch" >> ~/.bashrc
    echo "  Added neofetch to ~/.bashrc"
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "📝 Next steps:"
echo "  1. Set your wallpaper path in ~/.config/hypr/hyprland.conf (line 48)"
echo "  2. Logout and login to Hyprland"
echo "  3. Press SUPER + G to view the keybindings guide"
echo ""
echo "💜 Enjoy your beautiful Hyprland setup!"
