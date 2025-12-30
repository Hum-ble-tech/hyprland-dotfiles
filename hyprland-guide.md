# Hyprland Setup Guide

## Welcome to Your Hyprland System!

This document contains all the essential information for using your new Hyprland setup.

---

## What's Installed

### Core Components:
- **Hyprland v0.52.2** - Modern tiling Wayland compositor
- **kitty** - Terminal emulator
- **waybar** - Status bar (top of screen)
- **wofi** - Application launcher
- **dunst** - Notification daemon
- **rofi** - Alternative launcher

### Utilities:
- **Network Manager applet** - WiFi/network management
- **Blueman** - Bluetooth management
- **Pavucontrol** - Audio control
- **Brightnessctl** - Screen brightness control
- **Grim + Slurp** - Screenshots
- **Swaybg/Swaylock** - Wallpaper and screen locking

---

## Key Bindings

**SUPER** = Windows key / Command key

### Essential Keys:
- `SUPER + Q` - Open terminal (kitty)
- `SUPER + A` - Application launcher (wofi)
- `SUPER + F` - Open file manager (Nautilus)
- `SUPER + G` - Open this guide
- `SUPER + C` - Close active window
- `SUPER + M` - Exit Hyprland (logout)

### Window Management:
- `SUPER + V` - Toggle floating mode
- `SUPER + J` - Toggle split direction
- `SUPER + P` - Pseudo-tile mode
- `SUPER + Arrow Keys` - Move focus between windows

### Workspaces:
- `SUPER + 1-9` - Switch to workspace 1-9
- `SUPER + SHIFT + 1-9` - Move active window to workspace 1-9
- `SUPER + 0` - Switch to workspace 10
- `SUPER + SHIFT + 0` - Move window to workspace 10

### Mouse:
- `SUPER + Left Click + Drag` - Move window
- `SUPER + Right Click + Drag` - Resize window

### Screenshots:
- `Print` - Screenshot (select area with mouse)

### Media & Brightness:
- `XF86AudioRaiseVolume` - Volume up (usually F11 or dedicated key)
- `XF86AudioLowerVolume` - Volume down (usually F10 or dedicated key)
- `XF86AudioMute` - Mute toggle (usually F9 or dedicated key)
- `XF86MonBrightnessUp` - Brightness up (usually F6 or dedicated key)
- `XF86MonBrightnessDown` - Brightness down (usually F5 or dedicated key)

---

## Configuration Files

All configuration files are located in: `~/.config/`

### Important Config Locations:
- **Hyprland main config:** `~/.config/hypr/hyprland.conf`
- **Waybar config:** `~/.config/waybar/`
- **Kitty terminal:** `~/.config/kitty/`
- **Wofi launcher:** `~/.config/wofi/`

### Edit Configuration:
```bash
# Edit Hyprland config
nano ~/.config/hypr/hyprland.conf

# After editing, reload Hyprland:
# Press SUPER + M to logout, then login again
# Or kill and restart Hyprland
```

---

## Additional Resources

### ML4W Dotfiles
Beautiful pre-configured dotfiles are available in:
```
~/dotfiles
```

You can explore and apply these if you want a more customized setup.

### Useful Commands

```bash
# Check Hyprland version
hyprctl version

# List all windows
hyprctl clients

# List all monitors
hyprctl monitors

# Reload Hyprland config (not always reliable, relogin is better)
hyprctl reload

# Get active window info
hyprctl activewindow
```

### Installing More Apps

```bash
# Open terminal with SUPER + Q, then:
sudo apt update
sudo apt install <package-name>
```

**Recommended Apps:**
- `firefox` - Web browser
- `thunar` - Lightweight file manager
- `code` - VS Code
- `gimp` - Image editor
- `vlc` - Media player

---

## Troubleshooting

### Screen is black or stuck?
- Press `SUPER + Q` to open terminal
- Type: `killall -9 Hyprland` and press Enter
- You'll be returned to login screen

### Waybar not showing?
```bash
killall waybar
waybar &
```

### Want to change wallpaper?
```bash
# Edit in hyprland.conf, find the line:
# exec-once = swaybg -i /path/to/image.png
# Change the path to your image
```

### Need help?
- Hyprland Wiki: https://wiki.hyprland.org/
- Ubuntu Hyprland: https://github.com/JaKooLit/Ubuntu-Hyprland

---

## Tips for New Users

1. **Tiling is automatic** - Windows tile automatically. Use `SUPER + V` to float a window if needed.

2. **Workspaces are virtual desktops** - Use `SUPER + 1-9` to switch between them. Great for organizing work!

3. **Terminal is your friend** - Press `SUPER + Q` frequently. Many tasks are faster in terminal.

4. **Customize gradually** - Don't change everything at once. Learn the defaults first.

5. **Check waybar** - The top bar shows system info, workspaces, and more.

6. **Use wofi** - Press `SUPER + R` to launch any app quickly.

---

## Quick Start Checklist

- [ ] Open terminal (`SUPER + Q`)
- [ ] Launch an app (`SUPER + R`)
- [ ] Switch between workspaces (`SUPER + 1`, `SUPER + 2`, etc.)
- [ ] Close a window (`SUPER + C`)
- [ ] Take a screenshot (`Print` key)
- [ ] Open file manager (`SUPER + E`)
- [ ] Toggle fullscreen (`SUPER + F`)

---

**Your password:** mama0204

**Config location:** ~/.config/hypr/hyprland.conf

**Enjoy your Hyprland experience!**
