#!/bin/sh

git pull origin main

yay -Syy noconfirm git sddm-git polkit hyprland-bin waybar-hyprland-git alacritty rofi-lbonn-wayland-git nemo gvfs-mtp swayidle \
file-roller swaybg swaylock-effects-git wl-clipboard mailcap mpv networkmanager-dmenu-git wf-recorder bc gtk-engine-murrine \
xfce-polkit dunst geany viewnior nwg-look xdg-desktop-portal-hyprland-git qt5-svg inetutils pamixer bluez-utils\
mpc mpd ncmpcpp xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects qt5-quickcontrols2 brightnessctl \
pipewire wireplumber grim slurp jq dunst qt5-wayland qt6-wayland pastel dialog iw  mc dhcpcd networkmanager
yay -Rs foot xdg-desktop-portal-gnome

sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/

sudo systemctl enable sddm
