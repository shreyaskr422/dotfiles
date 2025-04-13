      
# ✨ My Hyprland Haven - Dotfiles ✨

Welcome to my personal corner of the digital world! This repository holds the configuration files (dotfiles) that make my Arch Linux + Hyprland setup feel like home. 🏡

[![Hyprland Logo - Optional: Add a link to an image if you have one!](https://raw.githubusercontent.com/hyprwm/Hyprland/main/assets/hyprland_logo.png)](https://hyprland.org/)
*(Logo hosted on official Hyprland repo - adjust if needed)*

---

## ✅ Prerequisites

Before diving in, make sure you have the basics covered:

*   [ ] A functioning **Arch Linux** (or Arch-based) installation.
*   [ ] **Hyprland** installed and working. ([Wiki](https://wiki.hyprland.org/))
*   [ ] A command-line package manager (`pacman`).
*   [ ] An **AUR helper** is highly recommended (like `yay`, `paru`, etc.) for some packages.

---

## 🚀 Installation & Dependencies

Time to get the necessary tools and bits installed!

*(Note: You'll need to clone this repository first. The method for applying these dotfiles (e.g., using `stow`, `yadm`, copying) is not detailed here yet - add your preferred method!)*

<details>
<summary>📦 <strong>Core Packages & Utilities</strong> (Click to Expand)</summary>

```bash
# Update your system first!
sudo pacman -Syu

# Install essential utilities
sudo pacman -S noise-suppression-for-voice alsa-firmware python-pynvim topgrade xorg-server

    

IGNORE_WHEN_COPYING_START
Use code with caution.Markdown
IGNORE_WHEN_COPYING_END

    🔊 noise-suppression-for-voice: Cleaner microphone audio.

    🎶 alsa-firmware: Firmware for sound cards.

    🐍 python-pynvim: Often needed for Neovim plugins.

    📈 topgrade: One command to upgrade everything.

    🖥️ xorg-server: Provides Xwayland for running X11 apps on Wayland (like Hyprland). Crucial for compatibility!

</details>
<details>
<summary>🎨 <strong>Fonts - Making Things Pretty</strong> (Click to Expand)</summary>

Install the required fonts, including Nerd Fonts for those sweet icons:

      
sudo pacman -S ttf-symbola ttf-dejavu noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-cascadia-code-nerd

    

IGNORE_WHEN_COPYING_START
Use code with caution.Bash
IGNORE_WHEN_COPYING_END

    ⚠️ Important Font Cache Update!
    After installing fonts, you MUST update the system's font cache:

          
    # For user-installed fonts (less common with pacman)
    fc-cache -f -v

    # For system-wide fonts (installed via pacman/sudo) - THIS IS LIKELY WHAT YOU NEED
    sudo fc-cache -r

        

    IGNORE_WHEN_COPYING_START

    Use code with caution.Bash
    IGNORE_WHEN_COPYING_END

    This tells your system about the new fonts.

</details>
<details>
<summary>🔌 <strong>Neovim Essentials (Node.js/npm)</strong> (Click to Expand)</summary>

Required for many modern Neovim plugins (LSPs, Telescope extensions, etc.) and features.

      
sudo pacman -S nodejs npm

    

IGNORE_WHEN_COPYING_START
Use code with caution.Bash
IGNORE_WHEN_COPYING_END
</details>
<details>
<summary>⚙️ <strong>Handling Default Applications</strong> (Click to Expand)</summary>

We use a specific tool to manage which app opens which file type (MIME types). This requires an AUR helper.

      
# Example using yay
yay -S selectdefaultapplication-fork-git

# Example using paru
paru -S selectdefaultapplication-fork-git

# Or install manually from the AUR if you prefer

    

IGNORE_WHEN_COPYING_START
Use code with caution.Bash
IGNORE_WHEN_COPYING_END

Remember to configure it after installation!
</details>
<details>
<summary>💡 <strong>Hardware Specifics (AMD GPU / Firmware)</strong> (Click to Expand)</summary>

These might be needed depending on your hardware.

      
sudo pacman -S xf86-video-amdgpu mkinitcpio-firmware

    

IGNORE_WHEN_COPYING_START
Use code with caution.Bash
IGNORE_WHEN_COPYING_END

    xf86-video-amdgpu: Open-source X.Org driver for AMD GPUs (can help with Xwayland).

    mkinitcpio-firmware: Extra firmware that might be missing, improving hardware detection during boot.

    ⚠️ Regenerate Initramfs!
    If you install mkinitcpio-firmware or change other mkinitcpio settings, rebuild the initial RAM disk images:

          
    sudo mkinitcpio -P

        

    IGNORE_WHEN_COPYING_START

    Use code with caution.Bash
    IGNORE_WHEN_COPYING_END

</details>
📝 Configuration Notes & Tips

    🤔 X11 Apps on Wayland? Some apps don't run natively on Wayland yet. That's why xorg-server (providing Xwayland) is listed as a core dependency. Hyprland uses it automatically to run most older graphical apps.

    🎯 Setting Defaults: Don't forget to run/configure selectdefaultapplication-fork-git to choose your preferred browser, file manager, terminal, etc.

🔗 Resources & Inspiration

Handy links for Hyprland exploration:

    🌐 Hyprland Docs & Wiki (Unofficial - rlw) - Great starting point.

    📚 Another Dotfiles/Hyprland Guide - More examples.

    ⭐ Official Hyprland Wiki - The primary source of truth!
