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

# Generate a .desktop file
echo "" > $HOME/.local/share/applications/flatty.desktop
echo "[Desktop Entry]" >> $HOME/.local/share/applications/flatty.desktop
echo "Name=Flatty" >> $HOME/.local/share/applications/flatty.desktop
echo "Comment='Simple flatpak GUI client for the flatpak command-line utility.'" >> $HOME/.local/share/applications/flatty.desktop
echo "Exec=$HOME/flatty/bin/flatty" >> $HOME/.local/share/applications/flatty.desktop
echo "Terminal=false" >> $HOME/.local/share/applications/flatty.desktop
echo "Type=Application" >> $HOME/.local/share/applications/flatty.desktop
echo "Icon=$HOME/flatty/icons/flatty.png" >> $HOME/.local/share/applications/flatty.desktop
update-desktop-database ~/.local/share/applications

echo "[install.sh] Installation finished."