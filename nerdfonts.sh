#!/bin/bash
DIR="$HOME/.local/share/fonts"
nerd () {
    cd /tmp
    fonts=( 
    "FiraCode" 
    "Go-Mono" 
    "Hack" 
    "Inconsolata" 
    "Iosevka" 
    "JetBrainsMono" 
    "Mononoki" 
    "RobotoMono" 
    "SourceCodePro" 
    )

    for font in ${fonts[@]}
    do
        wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/$font.zip
        unzip $font.zip -d $DIR/$font/
        rm $font.zip
    done
    fc-cache
}
if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist. Creating it now."
    mkdir -p $DIR
    nerd
else
    nerd
fi

