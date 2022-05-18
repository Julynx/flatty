#!/bin/bash

##
# @file    uninstall.sh
# @date    18/05/2022
# @author  Julio Cabria
##

echo "[uninstall.sh] Removing Flatty..."

# removed the binary and the icon
rm $HOME/.local/bin/flatty
rm $HOME/.local/share/icons/flatty/flatty.png

# Remove the "flatty.desktop" file from ".local/share/applications"
rm $HOME/.local/share/applications/flatty.desktop

update-desktop-database ~/.local/share/applications

echo "[uninstall.sh] Flatty uninstalled successfully..."
