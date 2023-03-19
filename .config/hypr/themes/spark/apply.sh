#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
##
## Script To Apply Themes

## Theme ------------------------------------
THEME="spark"

source "$HOME"/.config/hypr/themes/"$THEME"/theme.bash
altbackground="`pastel color $element_bg | pastel darken $dark_value | pastel format hex`"
altforeground="`pastel color $element_fg | pastel lighten $light_value | pastel format hex`"

## Directories ------------------------------
PATH_CONF="$HOME/.config"
PATH_TERM="$PATH_CONF/alacritty"
PATH_DUNST="$PATH_CONF/dunst"
PATH_GEANY="$PATH_CONF/geany"
PATH_WBR="$PATH_CONF/hypr/themes/$THEME/waybar"
PATH_ROF="$PATH_CONF/hypr/bin"
PATH_GTK="$HOME/.local/share/nwg-look"

## Waybar -----------------------------------
apply_waybar() {
	# launch waybar
	pkill waybar
	waybar -c ${PATH_WBR}/config -s ${PATH_WBR}/style.css &
}

# Terminal ----------------------------------
apply_terminal() {
	# alacritty : fonts
	sed -i ${PATH_TERM}/fonts.yml \
		-e "s/family: .*/family: \"$terminal_font_name\"/g" \
		-e "s/size: .*/size: $terminal_font_size/g"

	# alacritty : colors
	sed -i ${PATH_TERM}/alacritty.yml -e "s/opacity: .*/opacity: ${terminal_opacity}/g"
	cat > ${PATH_TERM}/colors.yml <<- _EOF_
		## Colors configuration
		colors:
		  # Default colors
		  primary:
		    background: '${background}'
		    foreground: '${foreground}'

		  # Normal colors
		  normal:
		    black:   '${color0}'
		    red:     '${color1}'
		    green:   '${color2}'
		    yellow:  '${color3}'
		    blue:    '${color4}'
		    magenta: '${color5}'
		    cyan:    '${color6}'
		    white:   '${color7}'

		  # Bright colors
		  bright:
		    black:   '${color8}'
		    red:     '${color9}'
		    green:   '${color10}'
		    yellow:  '${color11}'
		    blue:    '${color12}'
		    magenta: '${color13}'
		    cyan:    '${color14}'
		    white:   '${color15}'
	_EOF_

	# kitty : fonts
	sed -i ${PATH_CONF}/kitty/font.conf \
		-e "s/font_family .*/font_family $terminal_font_name/g" \
		-e "s/font_size .*/font_size $terminal_font_size/g"

	# kitty : colors
	sed -i ${PATH_CONF}/kitty/kitty.conf \
		-e "s/background_opacity .*/background_opacity ${terminal_opacity}/g"
	cat > ${PATH_CONF}/kitty/color.conf <<- _EOF_
		## Colors configuration
		# Default colors
			background ${background}
			foreground ${foreground}

		# black
			color0   ${color0}
			color8   ${color8}
		# red
			color1   ${color1}
			color9   ${color9}
		# green
			color2   ${color2}
			color10  ${color10}
		# yellow
			color3   ${color3}
			color11  ${color11}
		# blue
			color4  ${color4}
			color12 ${color12}
		# magenta
			color5   ${color5}
			color13  ${color13}
		# cyan
			color6   ${color6}
			color14  ${color14}
		# white
			color7   ${color7}
			color15  ${color15}

	_EOF_
}

# Geany -------------------------------------
apply_geany() {
	sed -i ${PATH_GEANY}/geany.conf \
		-e "s/color_scheme=.*/color_scheme=$geany_colors/g" \
		-e "s/editor_font=.*/editor_font=$geany_font/g"
}

# Appearance --------------------------------
apply_appearance() {
	# apply gtk theme, icons, cursor & fonts
	sed -i ${PATH_GTK}/gsettings \
		-e "s/gtk-theme=.*/gtk-theme=$gtk_theme/g" \
		-e "s/icon-theme=.*/icon-theme=$icon_theme/g" \
		-e "s/font-name=.*/font-name=$gtk_font/g" \
		-e "s/cursor-theme=.*/cursor-theme=$cursor_theme/g"
	
	sed -i "$HOME"/.gtkrc-2.0 \
		-e "s/gtk-theme-name=.*/gtk-theme-name=\"$gtk_theme\"/g" \
		-e "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=\"$icon_theme\"/g" \
		-e "s/gtk-font-name=.*/gtk-font-name=\"$gtk_font\"/g" \
		-e "s/gtk-cursor-theme-name=.*/gtk-cursor-theme-name=\"$cursor_theme\"/g"
		
	sed -i ~/.config/gtk-3.0/settings.ini \
		-e "s/gtk-theme-name=.*/gtk-theme-name=\"$gtk_theme\"/g" \
		-e "s/gtk-icon-theme-name=.*/gtk-icon-theme-name=\"$icon_theme\"/g" \
		-e "s/gtk-font-name=.*/gtk-font-name=\"$gtk_font\"/g" \
		-e "s/gtk-cursor-theme-name=.*/gtk-cursor-theme-name=\"$cursor_theme\"/g"
		
	nwg-look -a
	
	hyprctl setcursor "$cursor_theme"
	
	# inherit cursor theme
	if [[ -f "$HOME"/.icons/default/index.theme ]]; then
		sed -i -e "s/Inherits=.*/Inherits=$cursor_theme/g" "$HOME"/.icons/default/index.theme
	fi	
}

# Dunst -------------------------------------
apply_dunst() {
	# modify dunst config
	sed -i ${PATH_DUNST}/dunstrc \
		-e "s/width = .*/width = $dunst_width/g" \
		-e "s/height = .*/height = $dunst_height/g" \
		-e "s/offset = .*/offset = $dunst_offset/g" \
		-e "s/origin = .*/origin = $dunst_origin/g" \
		-e "s/font = .*/font = $dunst_font/g" \
		-e "s/frame_width = .*/frame_width = $dunst_border/g" \
		-e "s/separator_height = .*/separator_height = $dunst_separator/g" \
		-e "s/line_height = .*/line_height = $dunst_separator/g"

	# modify colors
	sed -i '/urgency_low/Q' ${PATH_DUNST}/dunstrc
	cat >> ${PATH_DUNST}/dunstrc <<- _EOF_
		[urgency_low]
		timeout = 2
		background = "${element_bg}"
		foreground = "${element_fg}"
		frame_color = "${color15}"

		[urgency_normal]
		timeout = 5
		background = "${element_bg}"
		foreground = "${element_fg}"
		frame_color = "${color15}"

		[urgency_critical]
		timeout = 0
		background = "${element_bg}"
		foreground = "${color9}"
		frame_color = "${color9}"
	_EOF_

	# restart dunst
	pkill dunst && dunst &
}

apply_rofi() {
	# modify icon theme
	if [[ -f "$PATH_ROF"/config.rasi ]]; then
		sed -i -e "s/icon-theme:.*/icon-theme: \"$rofi_icon\";/g" ${PATH_CONF}/rofi/config.rasi
	fi
	# modify rofi scripts
	sed -i ${PATH_ROF}/themes -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/launcher -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/music -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/powermenu -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/screenshot -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/recording -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/asroot -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/askpass -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/hyprwin -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	sed -i ${PATH_ROF}/scratchpad -e "s/STYLE=.*/STYLE=\"$THEME\"/g"
	}

# Network Menu ------------------------------
apply_netmenu() {
	if [[ -f "$PATH_ROF"/networkmanager-config.ini ]]; then
		sed -i ${PATH_ROF}/networkmanager-config.ini \
		-e "s#dmenu_command = .*#dmenu_command = rofi -dmenu -theme $PATH_CONF/hypr/themes/$THEME/rofi/networkmenu.rasi#g"
	fi
}

# Notify User -------------------------------
notify_user() {
	dunstify -u normal -h string:x-dunst-stack-tag:applytheme -i /usr/share/icons/dunst/themes.png "Applying Style : $THEME"
}
	
## Execute Script ---------------------------
apply_waybar
apply_terminal
apply_geany
apply_appearance
apply_dunst
apply_rofi
apply_netmenu
notify_user
