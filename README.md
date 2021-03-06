# dotfiles
This repository collects some user configuration files from my [Arch Linux][Arch Linux] system.

What's special about these? I'm using a window manager called [Sway][Sway] running on **Wayland**. Yay :tada: :tada:

[Arch Linux]: https://www.archlinux.org/
[Sway]: https://github.com/SirCmpwn/sway

![](https://raw.githubusercontent.com/dotlambda/dotfiles/master/screenshots/2016-01-30-054717_swaygrab.png)

## Installation
Clone this repo with git's `--recursive` flag to obtain all submodules. Run [bootstrap.sh][bootstrap.sh] to symlink the dotfiles in this repo to `$HOME` or `$XDG_CONFIG_HOME` and to install vim plugins.

[bootstrap.sh]: https://github.com/dotlambda/dotfiles/blob/master/bootstrap.sh

## What software do these configure?
* [CDM](https://github.com/ghost1227/cdm): console-based display manager
* [fish](https://fishshell.com/): the shell I use
* [i3wm](https://i3wm.org/): not used anymore, because I switched to Wayland
* [Neovim](https://neovim.io/): vim fork
  * [vim-plug](https://github.com/junegunn/vim-plug): plugin manager
* [ranger](http://nongnu.org/ranger/): file manager
* [Sway](https://github.com/SirCmpwn/sway): my preferred tiling WM for Wayland
* [termite](https://github.com/thestinger/termite/): terminal, though I only used it in i3
* [urxvt](http://software.schmorp.de/pkg/rxvt-unicode.html): terminal, configured in [Xresources][Xresources]
* [zathura](https://pwmt.org/projects/zathura/): PDF reader
* [Zsh](http://www.zsh.org/): fallback shell for bash compatibility
  * [Oh My Zsh](http://ohmyz.sh/)

[Xresources]: https://github.com/dotlambda/dotfiles/blob/master/Xresources

### Installed packages
I've created two files:
* [pkglist.txt](https://github.com/dotlambda/dotfiles/blob/master/pkglist.txt) where I store a record of all packages installed from the official Arch repo. This list is generated using `pacman -Qqen`.
* [pkglist-local.txt](https://github.com/dotlambda/dotfiles/blob/master/pkglist-local.txt) where all packages installed from the [AUR](https://aur.archlinux.org/) are listed. This list is generated using `pacman -Qqem`.
