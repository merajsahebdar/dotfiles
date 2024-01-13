# Dotfiles

_My State-of-the-Art Unix/Linux environment setup!_

This repository contains dotfiles meant to be configured using
[GNU Stow](https://www.gnu.org/software/stow/), a symlink farm manager that
streamlines the process of managing and applying configurations.

For instance, to apply fish configurations, you can simply run:

```sh
stow --target=$HOME -R fish
```

in the cloned repository directory, and it will set up the necessary symlinks
for you.
