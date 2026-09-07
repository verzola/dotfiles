# verzola's dotfiles

A personal dotfiles repository managed with GNU Stow.

## Overview

This repo keeps machine configuration in a modular structure, making it easy to:

- install or refresh shell and editor settings
- keep environment-specific files separate from shared config
- maintain a predictable setup across Linux machines

The repository is organized by package, and each folder is symlinked into `$HOME` via Stow.

## Requirements

- GNU Make
- GNU Stow

## Included packages

- `aliases` — global shell aliases
- `bash` — Bash startup configuration
- `btop` — system monitor config
- `git` — Git configuration
- `kitty` — terminal configuration
- `nvim` — Neovim configuration
- `starship` — prompt theme and status display
- `xresources` — X11 resource config
- `zsh` — Zsh shell setup

## Quick start

```sh
git clone https://github.com/verzola/dotfiles
cd dotfiles
make
```

The default target runs Stow and links the packages into `$HOME`.

> Existing files with the same names may need to be moved or backed up before running `make`.

## Common commands

```sh
make check
make help
make setup
make delete
```

### Command reference

- `make` — install or refresh all dotfile links
- `make check` — verify that Stow is installed
- `make help` — show available shortcuts
- `make setup` — install Stow on Ubuntu/Debian
- `make delete` — remove the symlinks created by Stow

## Notes

- This setup assumes a Linux environment and uses shell config heavily.
- Some tools require extra runtime packages such as Node, Go, or language servers.
- A few user-specific values (like secrets or machine-specific config) are expected to be kept outside the repo.

## Maintenance

To keep things clean over time:

- keep config modular by package
- avoid duplicating environment variables across shells
- prefer small, reusable aliases over complex one-off commands
- test LSP or plugin changes after updating editor config
