# My Dotfiles Setup ✨ 

Welcome! This repository contains my personal dotfiles for crafting a functional and aesthetically pleasing Arch Linux environment, centered around Hyprland. Let's get this setup looking sharp!

## 📦 Dependencies - Gathering the Components

**1. Core / Xorg / Audio / Fonts / Utils** The absolute essentials.
```bash
sudo pacman -Syu --needed xorg-server noise-suppression-for-voice alsa-firmware python-pynvim topgrade ttf-symbola ttf-dejavu noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd ttf-freebanglafont
```
* xorg-server`: For Xwayland compatibility. Non-negotiable for some apps.

**Update Font Cache:** (Seriously, don't skip this)
```bash
sudo fc-cache -r
fc-cache -f -v
```

**2. ✨ Appearance - The Visual Flair**
* 🎨 **Theme:** [WhiteSur-gtk-theme](https://github.com/vinceliuice/WhiteSur-gtk-theme)
* 🖼️ **Icons:** [WhiteSur-icon-theme](https://github.com/vinceliuice/WhiteSur-icon-theme)
* 🖱️ **Cursor:** [apple_cursor](https://github.com/ful1e5/apple_cursor)
    ️*🛠️ **Heads Up:** These usually need manual installation. Follow the instructions on their GitHub pages (look for `./install.sh` or similar).

**3. 🔌 Neovim - The Coder's Hub**
```bash
# Required for many Neovim plugins
sudo pacman -Syu --needed nodejs npm
```

**4. 🧠 Default Apps Handler (AUR) - Master Your Defaults**
```bash

# (yay):
# yay -S --needed selectdefaultapplication-fork-git
```

**5. ⚙️ GPU / Firmware (Optional, but often needed)**
```bash
# Example for AMD:
sudo pacman -Syu --needed xf86-video-amdgpu mkinitcpio-firmware

# ➡️ Nvidia/Intel users: Add your specific driver installation commands here!
```
**Crucial Step:** After installing GPU drivers (or if `mkinitcpio-firmware` was added), rebuild the initramfs:
```bash
sudo mkinitcpio -P
```

**6. 🎨 Compositor (Picom) - Smooth Moves Only**
* **Recommended Fork:** [jonaburg/picom](https://github.com/jonaburg/picom?tab=readme-ov-file) (This is the one for superior blur/animations)
* **Build or AUR:** You'll need to build this from source *or* find a specific AUR package (e.g., `picom-jonaburg-git`). The standard `picom` package won't cut it for the advanced effects.

---
**7. 💻For GPU or any shuttering problem for Nvidia graphics**
* **Needed To Add somethings:**
* **1. GRUB_CMDLINE_LINUX="nvidia_drm.modeset=1 rd.driver.blacklist=nouveau modprob.blacklist=nouveau"**
* **2. MODULES=(amdgpu nvidia nvidia_modeset nvidia_uvm nvidia_drm)**


 ## 📚 Resources & Further Conquests

* **Hyprland:** [Official Hyprland Wiki](https://wiki.hyprland.org/)
* **Linux:** [Starting Linux Guide](https://rlw.pages.dev/)
* **Other Setups:** [Inspiration Dotfile Docs](https://dotfiles-docs.vercel.app/)
* **Tools:** [Dotfyle](https://dotfyle.com/) (Find dotfiles, colorschemes, plugins)
* **Firefox Customization:** [Firefox-Mod-Blur(https://github.com/datguypiko/Firefox-Mod-Blur)]
  [betterfox(https://github.com/yokoffing/Betterfox)]
  [minimal_Firefox(https://github.com/xeji01/fujifox)]
---

