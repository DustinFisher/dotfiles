export TERM=xterm-256color
export EDITOR=vim

## Aliases ##
alias a=alias
alias aa=". ~/.bashrc; echo sourced!"
alias aaa="vim ~/.bashrc"
alias bi="bundle install"
alias gs="git status"
alias migrate="bundle exec rake db:migrate"
alias uncommit='git reset --mixed HEAD~1'
## End Aliases ##

function gvim() {
  nohup /usr/bin/gvim "$@" </dev/null &>/dev/null &
}
