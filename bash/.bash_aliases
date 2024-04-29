# My aliases
alias c='clear'
alias h='history'
alias hg='history | grep'
alias gh='cd ~'
alias ls='ls -al'

# Fix Kitty ssh issues
if [ "$TERM" = "kitty" ]; then
  alias ssh="kitty +kitten ssh"
fi
