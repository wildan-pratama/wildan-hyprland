#!/usr/bin/env bash

## Copyright (C) 2020-2023 Aditya Shakya <adi1090x@gmail.com>
##
## Autostart Programs

# Kill already running process
_ps=(swaybg swayidle waybar dunst mpd xdg-desktop-portal-hyprland xdg-desktop-portal xfce-polkit)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Start mpd
exec mpd &

# Swayidle
swayidle -w timeout 1800 'lock' timeout 1920 'systemctl suspend' &

# Etc
sleep 1
/usr/libexec/xdg-desktop-portal-hyprland &
sleep 2
/usr/lib/xdg-desktop-portal &
xdg-user-dirs-update
