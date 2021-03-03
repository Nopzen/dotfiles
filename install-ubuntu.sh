#!/bin/bash
# POSIX command lookup example
CMDS="zsh node docker terraform htop git tmux"
 
for i in $CMDS
do
  # command -v will return >0 when the $i is not found
  if command -v $i >/dev/null
  then
    echo "✔ $i found, skipping"
    continue
  else
    echo "✘ $i not found";
    exit 1;
  fi
done
 
# add rest of the script as we found all bins in $PATH
echo "Installation process done."