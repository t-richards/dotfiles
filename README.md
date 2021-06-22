# Tom's dotfiles

These are some of my configuration files for various Linux programs.
You can install them using [chezmoi][chezmoi].

# Getting started

```bash
# Fetch and overwrite local dotfiles using this repository
chezmoi init t-richards --apply --ssh
```

# Dependencies

Various programs are referenced in these configs, through aliases or other
means. The following [Arch Linux][archlinux] packages should be installed for
everything to work properly:

 - fzf
 - mtr
 - neovim
 - xorg-xset

[chezmoi]: https://www.chezmoi.io/
[archlinux]: https://www.archlinux.org/
