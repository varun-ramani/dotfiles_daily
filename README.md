# dotfiles_daily
My current configuration.

## Operating System
My current operating system of choice is Manjaro Linux. Like almost 
any distribution of Arch Linux, it is highly configurable. A good alternative is
Antergos Linux, or if you have that kind of time on your hands, just take the 
plunge and install Arch Linux manually. Unless you really want to learn 
how a Linux system works under the hood (which you should, at some point in time), it is probably a better choice to use an automatic installer for Arch.

## Necessary Packages:
These packages are necessary to get the rice working exactly like I have it, but 
note that if you want to modify the rice, you may not need all these packages.
If you run into any errors, it is most likely because you have not installed 
all the necessary packages. These packages are installable from the AUR and 
some are installable from the official repositories. 

You can use YAOURT to install the packages using `yaourt -S <package`.
* compton 
* i3-gaps 
* xorg-xinput 
* feh
* ranger
* termite
* playerctl
* dunst
* polybar
* alsa-utils
* pulseaudio
* xbacklight
* nodejs
* zsh
* i3lock-color
* automake (necessary for i3lock-color)
* autoconf (necessary for i3lock-color)
* nerd-fonts-complete
* lemonbar-xft-git
* rofi
* alsa-lib
* alsa-plugins
* pulseaudio
* pulseaudio-alsa
* zsh-theme-powerlevel9k
## Installing other necessary software:
### OH-MY-ZSH
In order to get the ZSH theme working like I have it, you are going to want 
to install OH-MY-ZSH with the following command: ```sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"```
