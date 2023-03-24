#!/bin/sh

CFG="$HOME/.config"

cek_update () {
    git pull origin main
}

hypr_pkgs () {
    echo "Installling hyprland pkgs"
    echo
    yay -Syy polkit hyprland-git waybar-hyprland-git alacritty rofi-lbonn-wayland-git \
    swayidle swaybg swaylock-effects-git wl-clipboard mailcap networkmanager-dmenu-git wf-recorder \
    bc gtk-engine-murrine xfce-polkit dunst nwg-look xdg-desktop-portal-hyprland-git qt5-svg mpc mpd ncmpcpp \
    inetutils pamixer bluez-utils xdg-user-dirs pulsemixer pavucontrol qt5-graphicaleffects hyprland-scratchpad-git \
    qt5-quickcontrols2 brightnessctl noto-fonts-main pipewire wireplumber grim slurp jq dunst \
    qt5-wayland qt6-wayland pastel networkmanager network-manager-applet noto-fonts-emoji wdisplays swww
}

gui_pkgs () {
    yay -Syy thunar thunar-archive-pluginfile-roller mpv geany viewnior 
}

rm_pkgs () {
    yay -Rs xdg-desktop-portal-gnome
}

cp_theme () {
    sudo cp -r usr /
    sudo cp -r etc /
}


cp_conf () {
    cp -rf .config ~/
    cp -rf .local ~/
    cp -r .icons ~/
    cp -r .gtkrc-2.0 ~/
}

backup_conf () {
    echo "Backup and copy config"
    echo
    if [ ! -d "$DIR" ]; then
    cp_conf
    else
    mv "$DIR"/hypr "$DIR"/hypr.bak
    cp_conf
    fi
}

sddm_pkgs () {
    yay -Syy sddm
    sudo rm -rf /etc/systemd/system/display-manager.service
    sudo systemctl enable sddm
}

install () {
    cek_update

    # Menampilkan menu pilihan
    echo "What you want install?"
    echo "1. Hyprland pkgs only"
    echo "2. Install/Update config"
    echo "3. Everythink"
    echo

    # Membaca input dari pengguna
    read -p "Your choice [1-3]: " choice

    # Memproses pilihan pengguna menggunakan perintah case
    case $choice in
    1)
    hypr_pkgs
    ;;
    2)
    backup_conf
    ;;
    3)
    echo "Install everythink..."
    hypr_pkgs
    gui_pkgs
    backup_conf
cp_theme
    rm_pkgs
    ;;
  *)
    echo "Your choice not valid"
    ;;
esac

}

install

