# Tom's dotfiles
These are some of my configuration files for various Linux programs.
You can install them using [modman][1].

# Getting started

```bash
# Go to your home directory
$ cd

# Create .modman directory
$ modman init

# Create symlinks for all files in this repository
$ modman clone https://github.com/t-richards/dotfiles
```

# Dependencies
Various programs are referenced in these configs, through aliases or other
means. The following [Arch Linux][2] packages should be installed for
everything to work properly:

 - apg
 - mtr
 - the_silver_searcher
 - xorg-setxkbmap

[1]: https://github.com/colinmollenhour/modman
[2]: https://www.archlinux.org/
