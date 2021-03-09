#!/bin/zsh
tput sgr0
clear

source ~/.dotfiles/colors.sh
DOTFILES_DIR=$HOME/.dotfiles

#===============================
# Copy files
#===============================
copy_config_files() {
  cp $HOME/.dotfiles/.zshrc $HOME/.zshrc
  cp $HOME/.dotfiles/env.sh $HOME/env.sh
  source $HOME/.zshrc
}

render_header() {
  cd $HOME
  command cat <<EOF
  $DARK_PURPLE
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
  DOTFILES_VERSION=$(git   --git-dir "$DOTFILES_DIR/.git" --work-tree "$DOTFILES_DIR" describe --abbrev=0)
  RELEASE_DATE=$(git --git-dir "$DOTFILES_DIR/.git" --work-tree "$DOTFILES_DIR" log -1 --format=%ad --date=short ${DOTFILES_VERSION})
  command cat <<EOF
          $DEVIDER
            $BOLD
            version      ${DOTFILES_VERSION}
            released     ${RELEASE_DATE}
            $RESET$DARK_PURPLE
            Commandline interface to bootstrap new Ubuntu / Linux machines $RESET
          $DEVIDER
EOF
  fi
}

#===============================
# Run the installation process
#===============================
run() {
  copy_config_files
  render_header
}

run