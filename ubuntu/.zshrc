# zsh/bin/to/your/bin/<3

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="gozilla"

# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Not really useful
export HOSTNAME=$(hostname) # Lenova

chmod u+x /usr/bin/nvim.appimage
alias nvim=/usr/bin/nvim.appimage
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# This is how I prompt: 
# PROMPT='%1~ > '
