Here's the updated README, blending the new information in:

```markdown
# Dotfiles Setup

## Dependencies

**1. Core / Xorg / Audio / Utils**
```bash
sudo pacman -Syu --needed xorg-server noise-suppression-for-voice alsa-firmware python-pynvim topgrade ttf-symbola ttf-dejavu noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd
```
*   `xorg-server` for X11 app compatibility (Xwayland).

**Update Font Cache:**
```bash
sudo fc-cache -r
fc-cache -f -v
```

**2. Appearance (GTK Theme / Icons / Cursor)**
*   **Theme:** [WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
*   **Icons:** [WhiteSur-icon-theme](https://github.com/vinceliuice/WhiteSur-icon-theme)
*   **Cursor:** [apple_cursor](https://github.com/ful1e5/apple_cursor)
    *   *(Note: These typically require manual installation. Follow instructions on their respective GitHub pages.)*

**3. Neovim**
```bash
sudo pacman -Syu --needed nodejs npm
```

**4. Default Apps Handler (AUR)**
```bash
# Example using yay:
# yay -S --needed selectdefaultapplication-fork-git

# Example using paru:
# paru -S --needed selectdefaultapplication-fork-git
# Replace with your preferred AUR helper and command
```

**5. AMD GPU / Firmware (Optional)**
```bash
sudo pacman -Syu --needed xf86-video-amdgpu mkinitcpio-firmware
```
**If `mkinitcpio-firmware` was installed, run:**
```bash
sudo mkinitcpio -P
```

**6. Compositor (Picom)**
*   Use this specific Picom fork for best results with animations/blur: [jonaburg/picom](https://github.com/jonaburg/picom?tab=readme-ov-file)
    *   *(Note: Requires manual building and installation or finding an AUR package like `picom-jonaburg-git`.)*

## Apply Dotfiles

*   (Add your method here: e.g., `stow .`, `cp -r .config/* ~/.config/`, `yadm clone <your-repo-url>`)

## Resources

*   [Hyprland Wiki](https://wiki.hyprland.org/)
*   [Starting Linux Guide](https://rlw.pages.dev/)
*   [Inspiration Dotfile Docs](https://dotfiles-docs.vercel.app/)
*   [Dotfyle (Dotfiles & Colorschemes)](https://dotfyle.com/)
```
