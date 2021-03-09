#!/bin/zsh
tput sgr0

# Colors / Format
RESET=$(tput sgr0);
BOLD=$(tput bold);
WHITE=$(tput setaf 7);
DARK_PURPLE=$(tput setaf 61);
LIGHT_PURPLE=$(tput setaf 131);

DEVIDER="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# Environment varialbes
export NPZ_SESSION_TYPE
export NPZ_MACHINE_NAME=$(uname -n)
export NPZ_ENV_ICON

echo "$RESET$BOLD Loading nopzen.env $RESET"

echo $DARK_PURPLE$DEVIDER
echo "$RESET$BOLD Setting environment $RESET"
echo $DARK_PURPLE$DEVIDER$RESET

if [ -z "${SSH_CLIENT:-}" ] || [ -z "${SSH_TTY:-}" ]; then
  NPZ_SESSION_TYPE="local/*"
else
  NPZ_SESSION_TYPE="remote/ssh"
fi

if [[ $NPZ_SESSION_TYPE =~ "remote" ]]; then
  NPZ_ENV_ICON="☁️ ";
else
  NPZ_ENV_ICON="🏡"
fi

echo "$LIGHT_PURPLE $NPZ_ENV_ICON environment detected, $BOLD$WHITE$(whoami)@$NPZ_MACHINE_NAME $RESET";

echo $DARK_PURPLE$DEVIDER
echo "$RESET$BOLD Creating aliases $RESET"
echo $DARK_PURPLE$DEVIDER$RESET

# Edit Configs 
alias zshconfig="vim $HOME/.zshrc"
alias envconfig="vim $NPZ_DOTFILES/env.sh"

# Helpers
alias ssh-start="eval `ssh-agent`"

echo "$LIGHT_PURPLE aliases create";

echo $DARK_PURPLE$DEVIDER
echo "$RESET$BOLD Nopzen.env loaded $RESET"
echo $DARK_PURPLE$DEVIDER$RESET