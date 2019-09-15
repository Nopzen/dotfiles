# nopzen env.sh
# this is where I init my bash enviroment
# this files should be sourced at the end
# off  my .zshrc after Zshell have been installed.

#!/bin/zsh

# Exports
export VIM_PLUGINS_PATH="$HOME/.local/share/nvim/site/plugged"
export GOROOT=/usr/local/go
export GOPATH=$HOME/code/Go
export PATH=$GOPATH/bin:$GOROOT/bin:$HOME/.cargo/bin:$PATH

# nvm - node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# FuzyFinder
# https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'

# Config Aliases
alias zshconfig="nvim $HOME/.zshrc"
alias vimconfig="nvim $HOME/.config/nvim/init.vim"
alias envconfig="nvim $HOME/env.sh"

# Directory Aliases
alias projects="$HOME/code"
alias ohmyzsh="$HOME/.oh-my-zsh"
alias vimplugins="$VIM_PLUGINS_PATH"

