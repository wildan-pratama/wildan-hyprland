# Hyprland with 11 themes on Arch linux

**Wildan Pratama**

[![Maintenance](https://img.shields.io/maintenance/yes/2022.svg)]()

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
yay -S git sddm-git polkit hyprland-bin waybar-hyprland alacritty rofi nemo gvfs-mtp \
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

### Download Debian non-free netinstall

Use the following Debian ISO as the base <https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/>

*do NOT grab the EDU download and this includes non-free and firmware*


## To Install


    git clone https://github.com/wildan-pratama/wildan-hyprland.git
    cd wildan-hyprland

    ./install.sh
   

## Tutorial for sway-wm settings:

 - Background handled by swaybg
 - Gtk3 theme handled by lxappearance
 - Filebrowser = Nemo
 - Default Terminal-Emulator = kitty
 - Text-Editor = geany/nano
 - Bar = Waybar
 - Sound = Pulseaudio

Main shortcuts: `~/.config/sway/config`


<kbd>MOD</kbd> key is set to the <kbd>WINKEY</kbd>/<kbd>LINKEY</kbd>

 - <kbd>MOD</kbd>+<kbd>Return</kbd> = open terminal (kitty)
 - <kbd>MOD</kbd>+<kbd>O</kbd> = open Browser (brave)
 - <kbd>MOD</kbd>+<kbd>P</kbd> = open File Manager (nemo)
 - <kbd>MOD</kbd>+<kbd>D</kbd>= app menu (rofi)
 - <kbd>MOD</kbd>+<kbd>Q</kbd> = close focused app [kill]
 - <kbd>MOD</kbd>+<kbd>S</kbd> = screenshot/bring up screenshot menu
 - <kbd>MOD</kbd>+<kbd>X</kbd> = power-menu
 - <kbd>ALT</kbd>+<kbd>SHIFT</kbd>+<kbd>R</kbd> = resize mode
 - <kbd>MOD</kbd>+<kbd>SHIFT</kbd>+<kbd>SPACE</kbd>  = float window
 - <kbd>MOD</kbd>+<kbd>HOLD DOWN</kbd> = drag floating window
 - <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd>  = switch focus respectively 
 - <kbd>MOD</kbd>+<kbd>SHIFT</kbd>+<kbd>MINUS</kbd> = send to scratchpad
 - <kbd>MOD</kbd>+<kbd>MINUS</kbd> = cycle through scratchpad
 - <kbd>MOD</kbd>+<kbd>N</kbd> = open network manager
 - <kbd>MOD</kbd>+<kbd>M</kbd> = open mpd controller
 - <kbd>MOD</kbd>+<kbd>R</kbd> = open root menu
 - <kbd>MOD</kbd>+<kbd>W</kbd> = open window menu
 
 
 

## Tiling:

Is set to default for swaywm and can be changed to:

- stacking: Only the focused window in the container is displayed. You get a list of windows at the top of the container. 
   - <kbd>MOD</kbd>+<kbd>B</kbd> = Vertical List
   - <kbd>MOD</kbd>+<kbd>V</kbd> = Horizontal List
     - navigate lists with <kbd>MOD</kbd>+<kbd>↑ ↓ → ←</kbd> 
   

