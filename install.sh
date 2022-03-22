#!/bin/bash

##
# @file    install.sh
# @date    22/03/2022
# @author  Julio Cabria
##

echo "[install.sh] Installing Flatty in $HOME/flatty."

# Create a folder named "flatty" inside the home folder
mkdir -p $HOME/flatty

# Copy the "bin" and "icons" folders inside the "flatty" folder
cp -r bin $HOME/flatty/
cp -r icons $HOME/flatty/

# Copy the "flatty.desktop" file into ".local/share/applications"
cp app/flatty.desktop $HOME/.local/share/applications/
update-desktop-database ~/.local/share/applications

echo "[install.sh] Flatty installed successfully in $HOME/flatty."