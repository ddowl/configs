alias bc='chruby-exec ruby-2.2 -- bundle check'
alias bce='bc || (echo "Installing newly added gems..." && bi) && be'
alias be='chruby-exec ruby-2.2 -- bundle exec'
alias bi='chruby-exec ruby-2.2 -- bundle install --no-prune --local'
alias ctagsm='ctags -R --exclude=node_modules --exclude=tmp --exclude=public --exclude=vendor'
alias gd='git diff'
alias gg='LC_ALL=C git grep'
alias gl='git log --oneline --abbrev-commit'
alias glv='git log -p' # git log "verbose"
alias glg='git log --oneline --abbrev-commit --all --graph --decorate --color' # git log w/ graph
alias gs='git st'
# enable color support of ls, dir, and grep
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
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
