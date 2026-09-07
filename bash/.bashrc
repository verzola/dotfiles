#
# ~/.bashrc
#

# Env vars
export EDITOR='nvim'
export TERM="${TERM:-xterm-256color}"
export PATH="$HOME/.config/composer/vendor/bin:$HOME/.local/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/bin:$PATH"

HISTSIZE=999999
HISTFILESIZE=999999

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

command -v starship >/dev/null && eval "$(starship init bash)"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source other files
[ -r "$HOME/.secrets.bash" ] && source "$HOME/.secrets.bash"
[ -r "$HOME/.aliases.common" ] && source "$HOME/.aliases.common"
[ -r "$HOME/.aliases.bash" ] && source "$HOME/.aliases.bash"

# FZF
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Added by Antigravity CLI installer
export PATH="/home/verzola/.local/bin:$PATH"
