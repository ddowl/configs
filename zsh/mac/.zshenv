# This file is always sourced, so it should set environment variables which need to be updated frequently.
#
# This file is read even when Zsh is launched to run a single command (with the -c option), even by another
# tool like make. You should be very careful to not modify the default behavior of standard commands because
# it may break some tools (by setting aliases for example).
#
export EDITOR=/usr/bin/vim
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"
export NODE_PATH="/usr/local/lib/node_modules"
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
# source /usr/local/bin/virtualenvwrapper.sh

export PATH="$HOME/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH"
source "$HOME/.cargo/env"
if [ -e /Users/drewdowling/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/drewdowling/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
