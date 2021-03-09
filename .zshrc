# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Initial global variables
export NPZ_DOTFILES=$HOME/.dotfiles

# Loading env.sh before the theme, as it requires a few ENV vars,
# to figure the diffrence between local/remote correct setup.
source $NPZ_DOTFILES/env.sh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="avit"

plugins=(git npm kubectl docker terraform)

source $ZSH/oh-my-zsh.sh
