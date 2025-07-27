#  ______  ___   _____ _   _    ___   _     _____  ___   _____ _____ _____ 
#  | ___ \/ _ \ /  ___| | | |  / _ \ | |   |_   _|/ _ \ /  ___|  ___/  ___|
#  | |_/ / /_\ \\ `--.| |_| | / /_\ \| |     | | / /_\ \\ `--.| |__ \ `--. 
#  | ___ \  _  | `--. \  _  | |  _  || |     | | |  _  | `--. \  __| `--. \
#  | |_/ / | | |/\__/ / | | | | | | || |_____| |_| | | |/\__/ / |___/\__/ /
#  \____/\_| |_/\____/\_| |_/ \_| |_/\_____/\___/\_| |_/\____/\____/\____/ 

# utils
alias c='clear'
alias h='history'
alias hg='history | grep'
alias ls='ls -al --color=auto'

# directory traversal
alias ..='cd ..'         # Move to parent directories
alias ...='cd ../..'     # Move up two parent directories
alias ....='cd ../../..' # Move up three parent directories
alias gh='cd ~'          # Go to home directory
alias gg='cd $HOME/git'  # Go to ~/git

# git aliases
alias gs='git status'
alias gaa='git add --all'
alias gc='git commit -m'
alias gd='git diff'

# Fix Kitty ssh issues
if [ "$TERM" = "kitty" ]; then
  alias ssh="kitty +kitten ssh"
fi
