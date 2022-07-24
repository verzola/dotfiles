alias al='vim ~/projects/verzola/aliases/aliases.conf && source ~/projects/verzola/aliases/aliases.conf'

# edits zshrc
alias rc='vim ~/.zshrc'

# refreshes current terminal
alias re='source ~/.zshrc'

# fast docker-compose
alias dc='docker-compose'

# edit hosts file with sudo
alias hosts='sudo vim /etc/hosts'

# vim aliases
alias vim='nvim'
alias v='nvim'

# open file explorer
alias o='nautilus .'

# folder navigation
alias ~='cd ~'
alias /='cd /'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../..'

# node aliases
alias dev='npm run dev'
alias build='npm run build'
alias install='npm install'
alias test='npm test'

# own all files recursively
alias fuckperms='sudo chown -R $USER:$USER . && sudo chmod -R 777 .'

# minify image
alias tinypng='tinypng -k	$TINYPNG_KEY'

# git aliases
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
