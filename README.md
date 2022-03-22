# Flatty
*Minimal GUI for the flatpak command, built using python and zenity.*
<br><br>

<p align="center">  
  <img width="772" src="https://i.imgur.com/WLFAoN2.png">
</p>
<br>

## Features
[Flatty](https://github.com/Julynx/flatty) is a minimal GUI app built around the [flatpak command](https://docs.flatpak.org/en/latest/flatpak-command-reference.html). 
It allows for browsing and installing [Flatpak](https://flatpak.org/) packages from [Flathub](https://flathub.org/) without having to open a terminal or a web browser.

It provides the following functionality:
- Uninstalling packages.
- Searching for packages and installing them.
- Updating all installed packages.

Flatty is currently a ***work in progress.*** 

## Dependencies
Flatty requires:
- [Python3](https://www.python.org/downloads/)    
Ubuntu/Debian: ```sudo apt install python3```
- [Flatpak](https://flatpak.org)           
See [installation instructions](https://flatpak.org/setup/).
- [Zenity](https://help.gnome.org/users/zenity/)  
Pre installed in [GNOME](https://www.gnome.org/) distros.
- [Git](https://git-scm.com/)                     
Ubuntu/Debian: `sudo apt install git`

It has been tested in [Ubuntu](https://ubuntu.com/) / [Debian](https://www.debian.org/) + [GNOME](https://www.gnome.org/) 
and may or may not run on other linux distributions or desktop environments.

## Installation
The following commands will download the latest version of [Flatty](https://github.com/Julynx/flatty) from this repository and install it:
```
git clone https://github.com/Julynx/flatty
```
```
cd flatty
```
```
chmod +x install.sh
```
```
./install.sh
```

## Uninstalling
To uninstall [Flatty](https://github.com/Julynx/flatty), run:
```
cd flatty
```
```
chmod +x uninstall.sh
```
```
./uninstall.sh
```
## FAQ
### **Does Flatty support other packages besides Flatpak?**

No, and it never will. [Flatty](https://github.com/Julynx/flatty) is meant to be a simple frontend for the [flatpak command](https://docs.flatpak.org/en/latest/flatpak-command-reference.html).

### **Will Flatty receive an update to display app icons, permissions, etc.?**

[Flatty's](https://github.com/Julynx/flatty) GUI is built on [Zenity](https://help.gnome.org/users/zenity/), which is an extremely simple UI library and doesn't allow for much customization / extension, if any.
It is just meant to be functional, so probably not in the near future.

### **Will Flatty support installing a manually downloaded Flatpak package?**

This is actually one of the most important features that may be implemented into the app in the near future.

### **Can I fork Flatty, modify it, distribute it, etc.?**

You are welcome to fork, modify and/or distribute [Flatty](https://github.com/Julynx/flatty) under the conditions of the [GNU GPL v2.0 license](https://www.gnu.org/licenses/old-licenses/gpl-2.0.html).

