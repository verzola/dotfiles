all:
	stow --verbose --target=$$HOME --restow */

delete:
	stow --verbose --target=$$HOME --delete */

setup-arch:
	sudo pacman -S stow

setup-ubuntu:
	sudo apt install stow
