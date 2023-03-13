#!/bin/sh

git pull origin main

yay -Syy sddm-git polkit hyprland-bin waybar-hyprland-git alacritty rofi-lbonn-wayland-git \
swayidle  swaybg swaylock-effects-git wl-clipboard mailcap networkmanager-dmenu-git wf-recorder \
bc gtk-engine-murrine xfce-polkit dunst nwg-look xdg-desktop-portal-hyprland-git qt5-svg \
inetutils pamixer bluez-utils xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects \
qt5-quickcontrols2 brightnessctl noto-fonts-main pipewire wireplumber grim slurp jq dunst \
qt5-wayland qt6-wayland pastel networkmanager network-manager-applet noto-fonts-emoji wdisplays swww

yay -Syy thunar thunar-archive-pluginfile-roller mpv geany viewnior mpc mpd ncmpcpp

yay -Syy catppuccin-cursors-mocha

yay -Rs foot xdg-desktop-portal-gnome

sudo cp -r usr /
sudo cp -r etc /
cp -r .config ~/
cp -r .local ~/
cp -r .icons ~/
cp -r .gtkrc-2.0 ~/

sudo systemctl enable sddm
