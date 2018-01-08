alias gd='git diff'
alias gg='LC_ALL=C git grep'
alias gl='git log --oneline --abbrev-commit'
alias glv='git log -p' # git log "verbose"
alias glg='git log --oneline --abbrev-commit --all --graph --decorate --color' # git log w/ graph
alias gs='git status'
alias l='ls -l'
alias la='ls -al'
alias lrt='ls -lrt'
alias ll='ls -l'
alias la='ls -Al'
alias l='ls -CF'
alias lrt='ls -lrt'
alias psg='ps aux | grep '
# alias rg='rg --no-heading' # check $HOME/bin/rg
alias ssh='ssh -A'
alias ssh-addme='ssh -K ~/.ssh/id_rsa'
alias refresh_aliases='source ~/.bashrc'
function op {
  vim $( find . -name "*$1*" | head -n 1 )
}
