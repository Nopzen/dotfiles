# nopzen env.sh
# this is where I init my bash enviroment
# this files should be sourced at the end
# off  my .zshrc after Zshell have been installed.

#!/bin/zsh

# Environment Variables
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  SESSION_TYPE=remote/ssh
# many other tests omitted
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) SESSION_TYPE=remote/ssh;;
  esac
fi

export SESSION_TYPE
export MACHINE_NAME=$(uname -n)

# Config Aliases
alias zshconfig="vim $HOME/.zshrc"
alias envconfig="vim $HOME/env.sh"

# Directory Aliases
alias open-source="$HOME/open-source"
alias repositories="$HOME/repositories"
alias ssh-start="eval `ssh-agent`"

# nvm - node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"