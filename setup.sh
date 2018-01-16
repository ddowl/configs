#!/bin/sh

CURRENT_DIR=${PWD##*/}
# Weak location check
if [ $CURRENT_DIR != "configs" ]; then
  "Please run setup.sh in the checkout directory"
  exit 1
fi

./setup_submodules.sh
ruby establish_symlinks.rb
