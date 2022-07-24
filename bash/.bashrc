#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# Source other files
[ -f $HOME/.secrets.zsh ] && source $HOME/.secrets.zsh
[ -f $HOME/.aliases.zsh ] && source $HOME/.aliases.zsh
