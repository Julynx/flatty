#!/bin/bash

##
# @file    uninstall.sh
# @date    22/03/2022
# @author  Julio Cabria
##

echo "[uninstall.sh] Removing Flatty..."

# removed the folder named "flatty" inside the home folder
rm -r $HOME/flatty

# Remove the "flatty.desktop" file from ".local/share/applications"
rm $HOME/.local/share/applications/flatty.desktop
update-desktop-database ~/.local/share/applications

echo "[uninstall.sh] Flatty uninstalled successfully..."