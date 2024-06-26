# edit and source this file
alias al='vim ~/.aliases.zsh && source ~/.aliases.zsh'

# edits zshrc
alias rc='vim ~/.zshrc'

# refreshes current terminal
alias re='source ~/.zshrc'

# terraform
alias tf='terraform'

# snyk test
alias snyktest='snyk test --all-projects --json | npx snyk-to-html -o snyk.html'
