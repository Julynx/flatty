#!/bin/bash

##
# @file    install.sh
# @date    18/05/2022
# @author  Julio Cabria
##

echo "[install.sh] Installing Flatty in: $HOME/.local/bin/flatty"

# Create the folders if they dont exist
mkdir $HOME/.local > /dev/null 2>&1
mkdir $HOME/.local/bin > /dev/null 2>&1
mkdir $HOME/.local/share > /dev/null 2>&1
mkdir $HOME/.local/share/icons > /dev/null 2>&1
mkdir $HOME/.local/share/icons/flatty > /dev/null 2>&1

# Install the binary and icon into the folders
cp bin/flatty $HOME/.local/bin/flatty
cp icons/flatty.png $HOME/.local/share/icons/flatty/flatty.png

# Generate a .desktop file
echo "[Desktop Entry]" > $HOME/.local/share/applications/flatty.desktop
echo "Name=Flatty" >> $HOME/.local/share/applications/flatty.desktop
echo "Comment='Simple flatpak GUI client for the flatpak command-line utility.'" >> $HOME/.local/share/applications/flatty.desktop
echo "Exec=$HOME/.local/bin/flatty" >> $HOME/.local/share/applications/flatty.desktop
echo "Terminal=false" >> $HOME/.local/share/applications/flatty.desktop
echo "Type=Application" >> $HOME/.local/share/applications/flatty.desktop
echo "Icon=$HOME/.local/share/icons/flatty/flatty.png" >> $HOME/.local/share/applications/flatty.desktop

update-desktop-database ~/.local/share/applications

echo "[install.sh] Cleaning up..."

rm -r bin
rm -r icons

echo "[install.sh] Installation finished."
