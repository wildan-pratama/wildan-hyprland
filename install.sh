#!/bin/sh

CFG="$HOME/.config"

cek_update () {
    git pull origin main
}

hypr_pkgs () {
    echo "Installling hyprland pkgs"
    echo

    # Hyprland Pkgs
    yay -Syy polkit hyprland-git waybar-hyprland-git alacritty rofi-lbonn-wayland-git swayidle hyprshot \
    swaybg swaylock-effects-git wl-clipboard wl-clipboard-history-git xdg-desktop-portal-hyprland-git

    # Network manager
    yay -S networkmanager-dmenu-git network-manager-applet networkmanager

    # Media & backend
    yay -S mailcap wf-recorder xfce-polkit bc gtk-engine-murrine dunst nwg-look qt5-svg \
    inetutils pamixer bluez-utils xdg-user-dirs qt5-graphicaleffects xorg-xhost xsettingsd \
    gvfs gvfs-mtp ntfs-3g jq dunst qt5-quickcontrols2 brightnessctl kvantum qt5-wayland qt6-wayland pastel \
    pulsemixer pavucontrol mpc mpd ncmpcpp pipewire wireplumber grim slurp wdisplays \
    noto-fonts noto-fonts-emoji noto-fonts-cjk ly wget unzip
}

gui_pkgs () {
    yay -Syy thunar thunar-archive-plugin thunar-volman file-roller mpv geany loupe 
}


cp_theme () {
    sudo cp -r usr /
    # Install GTK Themes
    git clone https://github.com/wildan-pratama/archcraft-themes.git
    cd archcraft-themes
    ./install.sh
    cd ..

    # Install Icon Themes
    git git clone https://github.com/wildan-pratama/archcraft-icons.git
    cd archcraft-icons
    ./install.sh
    cd ..

    # Install nerdfont
    ./nerdfonts.sh
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
    ;;
  *)
    echo "Your choice not valid"
    ;;
esac

}

install

