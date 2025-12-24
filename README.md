# Hyprland Dotfiles Setup

A curated collection of configurations for a sharp, functional Arch Linux environment.

---

### 1. Core Dependencies
Install essential system tools, fonts, and Neovim requirements:
```bash
sudo pacman -Syu --needed \
  xorg-server nodejs npm noise-suppression-for-voice alsa-firmware \
  python-pynvim topgrade ttf-symbola ttf-dejavu noto-fonts-emoji \
  ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd ttf-freebanglafont

# Update font cache
sudo fc-cache -rv
```

### 2. Appearance & UI
Manual installation required for themes and cursors:
- **Theme:** [WhiteSur GTK](https://github.com/vinceliuice/WhiteSur-gtk-theme)
- **Icons:** [WhiteSur Icons](https://github.com/vinceliuice/WhiteSur-icon-theme)
- **Cursor:** [Apple Cursor](https://github.com/ful1e5/apple_cursor)
- **Compositor:** `picom-jonaburg-git` (AUR) for advanced blur/animations.

---

### 3. GPU & Performance Tweaks

**Drivers & Firmware:**
```bash
sudo pacman -S xf86-video-amdgpu mkinitcpio-firmware nvidia-open-dkms nvidia-utils
sudo mkinitcpio -P
```

**Nvidia Shuttering Fix:**
Add these parameters to your configuration:

*   **GRUB (`/etc/default/grub`):**
    `GRUB_CMDLINE_LINUX="nvidia_drm.modeset=1 rd.driver.blacklist=nouveau modprobe.blacklist=nouveau"`
*   **Initcpio (`/etc/mkinitcpio.conf`):**
    `MODULES=(amdgpu nvidia nvidia_modeset nvidia_uvm nvidia_drm)`

---

### 4. Resources
- **Hyprland:** [Official Wiki](https://wiki.hyprland.org/)
- **Linux Guide:** [Starting Linux](https://rlw.pages.dev/)
- **Firefox Mods:** [Betterfox](https://github.com/yokoffing/Betterfox) | [Mod-Blur](https://github.com/datguypiko/Firefox-Mod-Blur)
- **Tools:** [Dotfyle](https://dotfyle.com/)
