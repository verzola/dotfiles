# ZPLUG
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

source $HOME/.zplug/init.zsh

zplug "plugins/z", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "MichaelAquilina/zsh-you-should-use"

# Env vars
export EDITOR='nvim'
export TERM="xterm-256color"
export PATH=$PATH:$HOME/.config/composer/vendor/bin
export PATH=$PATH:$HOME/.local/bin
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$HOME/bin/neovim/usr/bin:$PATH"

# History related
HISTFILE=~/.zsh_history
HISTSIZE=999999
SAVEHIST=999999
setopt SHARE_HISTORY
setopt appendhistory
setopt extended_glob

# FZF
[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh

# ZPLUG
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load #--verbose

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source other files
[ -f $HOME/.secrets.zsh ] && source $HOME/.secrets.zsh
[ -f $HOME/.aliases.zsh ] && source $HOME/.aliases.zsh
[ -f $HOME/.aliases.common ] && source $HOME/.aliases.common

eval "$(starship init zsh)"
