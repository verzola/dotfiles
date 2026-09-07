# ZPLUG
if [[ -r "$HOME/.zplug/init.zsh" ]]; then
  source "$HOME/.zplug/init.zsh"

  zplug "rupa/z", use:z.sh
  zplug "zsh-users/zsh-completions"
  zplug "zsh-users/zsh-autosuggestions"
  zplug "zsh-users/zsh-syntax-highlighting"
  zplug "zsh-users/zsh-history-substring-search"
  zplug "MichaelAquilina/zsh-you-should-use"
fi

# Env vars
export EDITOR='nvim'
export TERM="${TERM:-xterm-256color}"
export PATH="$HOME/.config/composer/vendor/bin:$HOME/.local/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/bin:$HOME/go/bin:$PATH"

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
if [[ -r "$HOME/.zplug/init.zsh" ]] && ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

[[ -r "$HOME/.zplug/init.zsh" ]] && zplug load

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source other files
[[ -r "$HOME/.secrets" ]] && source "$HOME/.secrets"
[[ -r "$HOME/.aliases.zsh" ]] && source "$HOME/.aliases.zsh"
[[ -r "$HOME/.aliases.common" ]] && source "$HOME/.aliases.common"

command -v starship >/dev/null && eval "$(starship init zsh)"
