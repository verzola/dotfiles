#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval "$(starship init bash)"

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

alias ls='ls --color=auto'

# edits zshrc
alias rc='vim ~/.bashrc'

# refreshes current terminal
alias re='source ~/.bashrc'

# edit hosts file with sudo
alias hosts='sudo vim /etc/hosts'

# vim aliases
alias vim='nvim'

# open file explorer
alias o='nemo .'

# Folder Navigation
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../..'

# NPM Scripts Aliases
alias dev='npm run dev'
alias build='npm run build'
alias install='npm install'
alias test='npm test'

# own all files recursively
alias fuckperms='sudo chown -R $USER:$USER . && sudo chmod -R 777 .'

# Git aliases
alias ga='git add'
alias gap='git add'
alias gb='git branch'
alias gc='git commit'
alias gca='git commit --amend'
alias gcb='git checkout -b'
alias gck='git checkout'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log'
alias gp='git push'
alias gpl='git pull'
alias gr='git restore'
alias grs='git restore --staged'
alias gst='git status'
alias gt='git tag'
alias gs='git switch'
alias gsc='git switch -c'
alias gft='git fetch --tags'
alias glt='git describe --abbrev=0 --tags'

# Docker-compose
alias dc='docker-compose'

# search string
function search() {
  grep -RinF $1 .
}

# search conflicts
function conflicts() {
  grep -RinF "======" .
  grep -RinF "<<<<<<" .
  grep -RinF ">>>>>>" .
}
