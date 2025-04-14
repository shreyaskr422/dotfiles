
Here's the updated README, blending the new information in:

```markdown
# Dotfiles Setup 🚀

---

## 📦 Dependencies

**1. Core / Xorg / Audio / Utils**
```bash
sudo pacman -Syu --needed xorg-server noise-suppression-for-voice alsa-firmware python-pynvim topgrade ttf-symbola ttf-dejavu noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd
```
*   `xorg-server`: For X11 app compatibility (Xwayland).

**Update Font Cache:**
```bash
sudo fc-cache -r
fc-cache -f -v
```

**2. ✨ Appearance (GTK Theme / Icons / Cursor)**
*   **Theme:** [WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
*   **Icons:** [WhiteSur-icon-theme](https://github.com/vinceliuice/WhiteSur-icon-theme)
*   **Cursor:** [apple_cursor](https://github.com/ful1e5/apple_cursor)
    *   *(Note: These typically require manual installation. Follow instructions on their respective GitHub pages.)*

**3. 🔌 Neovim**
```bash
sudo pacman -Syu --needed nodejs npm
```

**4. <0xF0><0x9F><0x94><0x84> Default Apps Handler (AUR)**
```bash
# Example using yay:
# yay -S --needed selectdefaultapplication-fork-git

# Example using paru:
# paru -S --needed selectdefaultapplication-fork-git
# Replace with your preferred AUR helper and command
```

**5.  GPU / Firmware (Optional)**
```bash
# For AMD:
sudo pacman -Syu --needed xf86-video-amdgpu mkinitcpio-firmware

# Add commands for other GPUs if needed (e.g., nvidia)
```
**If `mkinitcpio-firmware` was installed (or after GPU driver install), run:**
```bash
sudo mkinitcpio -P
```

**6. <0xF0><0x9F><0xAA><0x9F> Compositor (Picom)**
*   Recommended Fork: [jonaburg/picom](https://github.com/jonaburg/picom?tab=readme-ov-file) (for enhanced animations/blur)
    *   *(Note: Requires manual building/installation or an AUR package like `picom-jonaburg-git`.)*

---

## ⚙️ Apply Dotfiles

*   (Choose your method)
    *   Example `stow`: `stow .` (from within the dotfiles directory)
    *   Example `cp`: `cp -r .config/* ~/.config/` (use carefully!)
    *   Example `yadm`: `yadm clone <your-repo-url>`

---

## 📚 Resources

*   [Hyprland Wiki](https://wiki.hyprland.org/)
*   [Starting Linux Guide](https://rlw.pages.dev/)
*   [Inspiration Dotfile Docs](https://dotfiles-docs.vercel.app/)
*   [Dotfyle (Discover Dotfiles & Colorschemes)](https://dotfyle.com/)
```
