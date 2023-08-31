#
# ~/.bashrc
#

# Env vars
export EDITOR='nvim'
export TERM="xterm-256color"
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

HISTSIZE=999999
HISTFILESIZE=999999

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source other files
[ -f ~/.secrets.bash ] && source $HOME/.secrets.bash
[ -f ~/.aliases.common ] && source $HOME/.aliases.common
[ -f ~/.aliases.bash ] && source $HOME/.aliases.bash

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
