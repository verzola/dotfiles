SHELL := /bin/sh

PACKAGES := aliases bash btop git kitty nvim starship tmux xresources zsh
STOW := stow

.PHONY: all check help delete setup-arch setup-ubuntu

all: check
	$(STOW) --verbose --target="$(HOME)" --restow $(PACKAGES)

check:
	@command -v $(STOW) >/dev/null || { echo "Error: GNU Stow is not installed." >&2; exit 1; }

help:
	@printf '%s\n' \
		'make              Install or refresh all dotfile links' \
		'make check        Verify required tools are available' \
		'make delete       Remove links created by Stow' \
		'make setup-arch   Install GNU Stow on Arch Linux' \
		'make setup-ubuntu Install GNU Stow on Ubuntu/Debian'

delete:
	$(STOW) --verbose --target="$(HOME)" --delete $(PACKAGES)

setup-arch:
	sudo pacman -S --needed stow

setup-ubuntu:
	sudo apt install stow
