# Hyprland with 11 themes on Arch linux

**Wildan Pratama**

[![Maintenance](https://img.shields.io/maintenance/yes/2022.svg)]()

 file:///home/chocolate/Videos/Screencasts/Screencasts_2023-02-11-23-25-24.mkv

## Requirements
You need install yay first

### Yay

Run as user NOT ROOT!

```
# Before this you need base-devel installed
git clone https://aur.archlinux.org/yay-bin
cd yay-bin
makepkg -si
```

## To Install
After yay installed you can clone this repositorie and just run `install.sh`

    git clone https://github.com/wildan-pratama/wildan-hyprland.git
    cd wildan-hyprland

    ./install.sh


Or you can install manualy with this step

### Packages

``` bash
yay -S git sddm-git polkit hyprland-bin waybar-hyprland alacritty rofi nemo gvfs-mtp swayidle \
file-roller swaybg swaylock-effects-git wl-clipboard mailcap mpv networkmanager-dmenu-git \
xfce-polkit dunst geany viewnior nwg-look xdg-desktop-portal-hyprland-git qt5-svg inetutils \
mpc mpd ncmpcpp xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects qt5-quickcontrols2 \
pipewire wireplumber grim slurp jq dunst qt5-wayland qt6-wayland
```

### Copy Configuration and stuff

``` bash
cd wildan-hyprland
sudo cp -a usr /
sudo cp -a etc /
cp -a .config ~/
cp -a .local ~/
```

## Note
- Recommend archinstall with Sway as desktop for base
- Don't forget to enable and set sddm as default display manager
- After selecting theme you must open `GTK Setting` from launcher and just `Apply` button to apply gtk2 theme
- It’s recommended to uninstall any other portal implementations to avoid conflicts with the -hyprland or -wlr ones. -kde and -gnome are known to cause issues. both -wlr and -hyprland installed at once will also cause conflicts. Choose one and uninstall the other. see https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/
``` bash
yay -Rs xdg-desktop-portal-gnome
```

## Tutorial for Hyprland settings:

 - Background handled by swaybg
 - Gtk theme handled by nwg-look
 - Filebrowser = Nemo
 - Default Terminal-Emulator = alacritty
 - Text-Editor = geany/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: `~/.config/hypr/keybind.conf`


<kbd>MOD</kbd> key is set to the <kbd>WINKEY</kbd>/<kbd>LINKEY</kbd>

 - <kbd>MOD</kbd>+<kbd>Return</kbd> = open terminal
 - <kbd>MOD</kbd>+<kbd>W</kbd> = open Browser (brave)
 - <kbd>MOD</kbd>+<kbd>F</kbd> = open File Manager (nemo)
 - <kbd>MOD</kbd>+<kbd>D</kbd>= open Launcher (rofi)
 - <kbd>MOD</kbd>+<kbd>Q</kbd> = close focused app [kill]
 - <kbd>MOD</kbd>+<kbd>S</kbd> = screenshot/bring up screenshot menu
 - <kbd>MOD</kbd>+<kbd>X</kbd> = power-menu
 - <kbd>MOD</kbd>+<kbd>SPACE</kbd>  = float window
 - <kbd>MOD</kbd>+<kbd>HOLD DOWN</kbd> = drag floating window
 - <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd>  = switch focus respectively 
 - <kbd>MOD</kbd>+<kbd>N</kbd> = open network manager
 - <kbd>MOD</kbd>+<kbd>M</kbd> = open mpd controller
 - <kbd>MOD</kbd>+<kbd>R</kbd> = open root menu
 
