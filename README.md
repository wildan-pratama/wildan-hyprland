# Hyprland with beautiful themes on Arch linux

**Wildan Pratama**

[![Maintenance](https://img.shields.io/maintenance/yes/2023.svg)]()


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

### Packages base

``` bash
yay -Syy sddm-git polkit hyprland-git waybar-hyprland-git alacritty rofi-lbonn-wayland-git \
swayidle  swaybg swaylock-effects-git wl-clipboard mailcap networkmanager-dmenu-git wf-recorder \
bc gtk-engine-murrine xfce-polkit dunst nwg-look xdg-desktop-portal-hyprland-git qt5-svg \
inetutils pamixer bluez-utils xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects hyprland-scratchpad-git \
qt5-quickcontrols2 brightnessctl noto-fonts-main pipewire wireplumber grim slurp jq dunst \
qt5-wayland qt6-wayland pastel networkmanager network-manager-applet noto-fonts-emoji wdisplays swww

```

### Packages gui file, media, and text editor

``` bash
yay -Syy thunar thunar-archive-pluginfile-roller mpv geany viewnior mpc mpd ncmpcpp

```

### Copy Configuration and stuff

``` bash
cd wildan-hyprland
sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .gtkrc-2.0 ~/
```

## Note
- Recommend archinstall with Sway as desktop for base
- Don't forget to enable and set sddm as default display manager
- It’s recommended to uninstall any other portal implementations to avoid conflicts with the -hyprland or -wlr ones. -kde and -gnome are known to cause issues. both -wlr and -hyprland installed at once will also cause conflicts. Choose one and uninstall the other. see https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/
``` bash
yay -Rs xdg-desktop-portal-gnome
```

## Tutorial for Hyprland settings:

 - Background handled by swww
 - Gtk theme handled by nwg-look
 - Filebrowser = Nemo
 - Default Terminal-Emulator = alacritty
 - Text-Editor = geany/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: `~/.config/hypr/keybind.conf`


<kbd>MOD</kbd> key is set to the <kbd>WINKEY</kbd>/<kbd>LINKEY</kbd>

<kbd>Apps</kbd>
 - <kbd>MOD</kbd>+<kbd>Return</kbd> = open terminal
 - <kbd>MOD</kbd>+<kbd>W</kbd> = open Browser (brave)
 - <kbd>MOD</kbd>+<kbd>F</kbd> = open File Manager (nemo)
 - <kbd>MOD</kbd>+<kbd>E</kbd> = open Editor (geany)
 - <kbd>MOD</kbd>+<kbd>D</kbd>= open Launcher (rofi)
 - <kbd>MOD</kbd>+<kbd>R</kbd> = open root menu
 
 <kbd>On Windows</kbd> *you can use arrow/hjkl key too
 - <kbd>MOD</kbd>+<kbd>Q</kbd> = close focused app [kill]
 - <kbd>MOD</kbd>+<kbd>A/G</kbd> = send/restore windows from scratchpad
 - <kbd>MOD</kbd>+<kbd>SPACE</kbd>  = float window
 - <kbd>MOD</kbd>+<kbd>HOLD DOWN</kbd> = drag floating window
 - <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd>  = switch focus respectively
 - <kbd>MOD</kbd>+<kbd>Alt</kbd>+<kbd>R</kbd> = submmap/resize window
 - <kbd>MOD</kbd>+<kbd>Tab</kbd>  = switch between windows in a floating workspace
 - <kbd>MOD</kbd>+<kbd>P</kbd>  = pseudo
 - <kbd>MOD</kbd>+<kbd>V</kbd>  = toggle split
 
 <kbd>Screenshot/Record</kbd>
 - <kbd>MOD</kbd>+<kbd>S</kbd> = screenshot/bring up screenshot menu
 - <kbd>MOD</kbd>+<kbd>PrintScrn</kbd> = screenrecord/bring up screenrecord menu
 - <kbd>PrintScrn</kbd> = Quick Screenshot the whole screen and copy to clipboard
 - <kbd>Shift</kbd>+<kbd>PrintScrn</kbd> = Quick Screenshot the whole screen and copy to clipboard without save it to image file
 
 <kbd>Control</kbd>
 - <kbd>MOD</kbd>+<kbd>X</kbd> = power-menu 
 - <kbd>MOD</kbd>+<kbd>N</kbd> = open network manager
 - <kbd>MOD</kbd>+<kbd>M</kbd> = open mpd controller
 
 
 
