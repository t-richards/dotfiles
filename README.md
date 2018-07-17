# Tom's dotfiles

These are some of my configuration files for various Linux programs.
You can install them using [GNU Stow][stow].

# Getting started

```bash
# Go to your home directory
$ cd

# Clone repo
$ git clone https://github.com/t-richards/dotfiles.git
$ cd dotfiles

# Create symlinks for all files in this repository
$ stow .
```

# Dependencies

Various programs are referenced in these configs, through aliases or other
means. The following [Arch Linux][archlinux] packages should be installed for
everything to work properly:

 - fzf
 - mtr
 - neovim
 - pwgen
 - xorg-setxkbmap

[stow]: https://www.gnu.org/software/stow/
[archlinux]: https://www.archlinux.org/
