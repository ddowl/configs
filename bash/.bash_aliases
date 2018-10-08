# Git Aliases
alias gd='git diff'
alias gg='LC_ALL=C git grep'
alias gl='git log --oneline --abbrev-commit'
alias glv='git log -p' # git log "verbose"
alias glg='git log --oneline --abbrev-commit --all --graph --decorate --color' # git log w/ graph
alias gs='git status'

# Make Terminal Better 
alias ls='ls -Gp'                # Preferred ‘ls’ implementation
alias la='ls -al'
alias lrt='ls -lrt'
alias la='ls -Al'
alias l='ls -CF'
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias refresh_aliases='source ~/.bashrc'
function op {
  vim $( find . -name "*$1*" | head -n 1 )
}
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
alias show_options='shopt'                  # Show_options: display bash options settings
alias fzfp='fzf --preview "[[ \$(file --mime {}) =~ binary ]] && echo {} is a binary file || (highlight -O ansi -l {} || coderay {} || rougify {} || cat {}) 2> /dev/null | head -500"'

# Systems and Processes
alias psg='ps aux | grep '
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
# alias which='type -all'                     # which:        Find executables

# Networking
alias ssh='ssh -A'
alias ssh-addme='ssh-add -K ~/.ssh/id_rsa'
export DROPLET_IP='178.128.77.208'
alias ssh-void="ssh drew@$DROPLET_IP"
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up

# Quick file sharing through https://transfer.sh/
transfer() {
  if [ $# -eq 0 ]; then
    echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"
    return 1
  fi
  tmpfile=$( mktemp -t transferXXX )
  if tty -s; then
    basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g')
    curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile
  else
    curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile
  fi
  cat $tmpfile
  rm -f $tmpfile
}
