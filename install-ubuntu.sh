#!/bin/bash

# https://vaneyckt.io/posts/safer_bash_scripts_with_set_euxo_pipefail/
set -Eueo pipefail

DOTFILES_DIR="$HOME/.dotfiles"

tput sgr0
RED=$(tput setaf 1)
ORANGE=$(tput setaf 3)
GREEN=$(tput setaf 2)
PURPLE=$(tput setaf 5)
CYAN=$(tput setaf 4)
BLUE=$(tput setaf 6)
WHITE=$(tput setaf 7)
BOLD=$(tput bold)
RESET=$(tput sgr0)
DEVIDER="~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"


# =======================================================================
# = Main functions
# =======================================================================

render_header() {
  cd $HOME
  command cat <<EOF
  $PURPLE
                                                          __ _ _          
                                                        / _(_| |         
                       _ __   ___  _ __ _______ _ __   | |_ _| | ___ ___ 
                      | '_ \ / _ \| '_ |_  / _ | '_ \  |  _| | |/ _ / __|
                      | | | | (_) | |_) / |  __| | | |_| | | | |  __\__ \ $()
                      |_| |_|\___/| .__/___\___|_| |_(_|_| |_|_|\___|___/
                                  | |                                    
                                  |_|                                    
  $RESET
EOF

  if [ -d "$DOTFILES_DIR/.git" ]; then
  TOOL_VERSION=$(git --git-dir "$DOTFILES_DIR/.git" --work-tree "$DOTFILES_DIR" describe --abbrev=0)
  RELEASE_DATE=$(git --git-dir "$DOTFILES_DIR/.git" --work-tree "$DOTFILES_DIR" log -1 --format=%ad --date=short ${TOOL_VERSION})
  command cat <<EOF
          $DEVIDER
            $BOLD
            version      ${TOOL_VERSION}
            released     ${RELEASE_DATE}
            $RESET$PURPLE
            Commandline interface to bootstrap new Ubuntu / Linux machines $RESET
          $DEVIDER
EOF
  fi
}


run() {
  render_header
  echo "Run nopzen dot files"
}

# =======================================================================
# = Run
# =======================================================================

run