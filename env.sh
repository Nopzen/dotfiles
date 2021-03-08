#!/bin/bash
tput sgr0

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eueo pipefail

# Colors / Format
RESET=$(tput sgr0);
BOLD=$(tput bold);
WHITE=$(tput setaf 7);
DARK_PURPLE=$(tput setaf 61);
LIGHT_PURPLE=$(tput setaf 131);

DEVIDER="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

echo "$RESET$BOLD Loading nopzen.env $RESET"

echo $DARK_PURPLE$DEVIDER
echo "$RESET$BOLD Setting environment $RESET"
echo $DARK_PURPLE$DEVIDER$RESET

if [ -z "${SSH_CLIENT:-}" ] || [ -z "${SSH_TTY:-}" ]; then
  NPZ_SESSION_TYPE="local/*"
else
  NPZ_SESSION_TYPE="remote/ssh"
fi

export NPZ_SESSION_TYPE
export NPZ_MACHINE_NAME=$(uname -n)

if [[ $NPZ_SESSION_TYPE =~ "remote" ]]; then
  NPZ_ENV_ICON="☁️ ";
else
  NPZ_ENV_ICON="🏡"
fi

export NPZ_ENV_ICON
echo "$LIGHT_PURPLE $NPZ_ENV_ICON environment detected $RESET";

echo $DARK_PURPLE$DEVIDER
echo "$RESET$BOLD Nopzen.env loaded $RESET"
echo $DARK_PURPLE$DEVIDER$RESET