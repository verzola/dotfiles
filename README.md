# verzola's dotfiles

My dotfiles managed with GNU Stow.

## Requirements
- GNU Make
- GNU Stow

## Commands
- **`make`:** create or refresh symbolic links with Stow
- **`make check`:** verify that Stow is installed
- **`make setup-arch`:** install Stow on Arch Linux
- **`make setup-ubuntu`:** install Stow on Ubuntu/Debian
- **`make delete`:** remove symbolic links created with Stow

## Quick
```sh
git clone https://github.com/verzola/dotfiles
cd dotfiles
make
```

Run `make help` to see all available commands. The default target links the
packages into `$HOME`; existing files may need to be moved before running it.
