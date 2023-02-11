# Hyprland with 11 themes on Arch linux

**Sway Nordic Edition**

[![Maintenance](https://img.shields.io/maintenance/yes/2022.svg)]()

## Requirements
_This install changes Debian to the SID (Dev) Branch_


### Download Debian non-free netinstall

Use the following Debian ISO as the base <https://cdimage.debian.org/cdimage/unofficial/non-free/cd-including-firmware/weekly-builds/amd64/iso-cd/>

*do NOT grab the EDU download and this includes non-free and firmware*


## To Install


    git clone https://github.com/wildan-pratama/debian-sway

    cd debian-sway

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
   


![image](https://user-images.githubusercontent.com/84622086/197395301-3249793c-097d-464f-973b-dee0a5092d27.png)

![image](https://user-images.githubusercontent.com/84622086/197395071-52498d0c-d5d4-409c-9be3-18c09a7d97c6.png)

![image](https://user-images.githubusercontent.com/84622086/197395330-83614e07-eb2e-4dcd-9894-fe1826b03524.png)

![image](https://user-images.githubusercontent.com/84622086/197395349-8771f2c0-e773-47d9-880f-74be74588bcb.png)

![image](https://user-images.githubusercontent.com/84622086/197395395-661792d3-115d-429a-81ab-bf7a1cc64449.png)

![image](https://user-images.githubusercontent.com/84622086/197395620-630290b0-341c-4f22-a936-0ea6f6844cab.png)

![image](https://user-images.githubusercontent.com/84622086/197395664-532457a3-33a0-4586-b99c-b4ca719bbfe1.png)




Waybar :
![oie_C8xapwpKYsYY](https://user-images.githubusercontent.com/84622086/197395557-53b0d9ab-9e43-4acc-b43f-d55e361d6b54.png)


## This is include Brave browser repo and Visual studio code repo, so you can install Brave browser and Visual studio code by typing:



    sudo nala install brave-browser code


![image](https://user-images.githubusercontent.com/84622086/197396731-31b571b9-47fd-4e4d-92a0-df35a56b5ff9.png)


