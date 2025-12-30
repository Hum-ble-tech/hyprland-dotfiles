# Hyprland Dotfiles - Catppuccin Mocha Theme

Beautiful Hyprland configuration with Catppuccin Mocha color scheme, smooth animations, and custom keybindings.

![Theme: Catppuccin Mocha](https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/palette/macchiato.png)

## 🎨 Features

- **Catppuccin Mocha** theme everywhere (Hyprland, Waybar, Wofi, Kitty, GTK apps)
- **Smooth bouncy animations** for window management
- **Apple keyboard support** with proper symbol mapping
- **Emoji picker** in Waybar
- **Custom keybindings** optimized for workflow
- **Neofetch** on terminal launch
- **Pink-toned terminal** with Liberation Mono font

## 📦 Required Packages

### Core
```bash
sudo pacman -S hyprland waybar wofi kitty swaybg grim slurp wtype neofetch
```

### Additional
```bash
sudo pacman -S nautilus papirus-icon-theme pavucontrol brightnessctl playerctl
```

### Fonts
```bash
sudo pacman -S ttf-liberation nerd-fonts
```

## 🎨 Catppuccin Theme Installation

### GTK Theme
```bash
cd /tmp
curl -LO https://github.com/catppuccin/gtk/releases/latest/download/catppuccin-mocha-mauve-standard+default.zip
mkdir -p ~/.themes
unzip catppuccin-mocha-mauve-standard+default.zip -d ~/.themes/
```

### Papirus Folder Icons (Optional)
```bash
git clone https://github.com/catppuccin/papirus-folders.git
cd papirus-folders
sudo cp -r src/* /usr/share/icons/Papirus/
```

## 🚀 Installation

### 1. Clone this repository
```bash
git clone https://github.com/YOUR_USERNAME/dotfiles.git ~/dotfiles-temp
```

### 2. Backup existing configs (optional but recommended)
```bash
mv ~/.config/hypr ~/.config/hypr.backup
mv ~/.config/waybar ~/.config/waybar.backup
mv ~/.config/kitty ~/.config/kitty.backup
mv ~/.config/wofi ~/.config/wofi.backup
```

### 3. Copy configs
```bash
cp -r ~/dotfiles-temp/.config/* ~/.config/
cp -r ~/dotfiles-temp/.local/* ~/.local/
```

### 4. Make scripts executable
```bash
chmod +x ~/.local/bin/emoji-picker
```

### 5. Add Neofetch to your shell (optional)
Add this to your `~/.bashrc` or `~/.zshrc`:
```bash
neofetch
```

### 6. Set wallpaper
Download your preferred wallpaper and update the path in `~/.config/hypr/hyprland.conf`:
```
exec-once = swaybg -i /path/to/your/wallpaper.jpg -m fill
```

## ⌨️ Keybindings

**SUPER** = Windows/Command key

### Essential
- `SUPER + Q` - Terminal
- `SUPER + A` - App launcher
- `SUPER + F` - File manager
- `SUPER + G` - Open keybindings guide
- `SUPER + C` - Close window
- `SUPER + M` - Exit/Logout

### Window Management
- `SUPER + V` - Toggle floating
- `SUPER + Arrow Keys` - Move focus
- `SUPER + Left Click + Drag` - Move window
- `SUPER + Right Click + Drag` - Resize window

### Workspaces
- `SUPER + 1-9` - Switch to workspace
- `SUPER + SHIFT + 1-9` - Move window to workspace

### Other
- `SUPER + SHIFT + S` - Screenshot (select area)
- Click 😀 in waybar - Emoji picker

## 🎯 Post-Installation

1. **Logout and login** to Hyprland for full theme application
2. **Install GTK theme** following instructions above
3. **Set your wallpaper** path in hyprland.conf
4. **Customize** colors and keybindings to your preference

## 🔧 Customization

### Change Colors
Colors are defined in:
- Hyprland: `~/.config/hypr/hyprland.conf` (lines 93-94)
- Waybar: `~/.config/waybar/style.css` (imports mocha.css)
- Kitty: `~/.config/kitty/kitty.conf` (line 40 for text color)

### Change Keybindings
Edit `~/.config/hypr/hyprland.conf` starting at line 230

### Change Terminal Font
Edit `~/.config/kitty/kitty.conf` lines 13-14

## 📝 Notes

- **Apple Keyboard Users**: The config includes Apple keyboard mappings (`apple_laptop` model with `apple:badmap` options)
- **Non-Apple Keyboards**: You may want to remove these settings from `~/.config/hypr/hyprland.conf` lines 200-201

## 💜 Credits

- **Theme**: [Catppuccin](https://github.com/catppuccin/catppuccin)
- **Window Manager**: [Hyprland](https://hyprland.org/)
- **Status Bar**: [Waybar](https://github.com/Alexays/Waybar)
- **Terminal**: [Kitty](https://sw.kovidgoyal.net/kitty/)

## 📄 License

MIT License - Feel free to use and modify!

---

**Enjoy your beautiful Hyprland setup!** 💜✨
