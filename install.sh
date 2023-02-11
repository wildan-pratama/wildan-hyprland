#!/bin/sh

yay -S git sddm-git polkit hyprland-bin waybar-hyprland alacritty rofi nemo gvfs-mtp file-roller swaybg swaylock-effects-git wl-clipboard mailcap mpv \
networkmanager-dmenu-git xfce-polkit dunst geany viewnior nwg-look xdg-desktop-portal-hyprland-git qt5-svg inetutils mpc mpd ncmpcpp xdg-user-dirs \
pulsemixer pavucontrol qt5-graphicaleffects qt5-quickcontrols2 pipewire wireplumber grim slurp jq dunst qt5-wayland qt6-wayland xorg-xsetroot
yay -Rs foot xdg-desktop-portal-gnome

sudo cp -a usr /
sudo cp -a etc /
cp -a .config ~/
cp -a .local ~/

sudo systemctl enable sddm
