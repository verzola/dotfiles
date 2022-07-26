#
# ~/.bashrc
#

# Env vars
export EDITOR='nvim'
export TERM="xterm-256color"
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

HISTSIZE=999999
HISTFILESIZE=999999

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# Source other files
[ -f ~/.secrets.bash ] && source $HOME/.secrets.bash
[ -f ~/.aliases.bash ] && source $HOME/.aliases.bash
