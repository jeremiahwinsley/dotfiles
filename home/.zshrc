source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
fi

antigen theme jeremiahwinsley/zsh themes/robbyrussell
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle StackExchange/blackbox
antigen apply

alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

alias ap="ansible-playbook -i hosts"
alias apb="ansible-playbook -i hosts --ask-become-pass"
alias phpunit="vendor/bin/phpunit"

export GOPATH=$HOME/go

if [ -f $HOME/.localrc ]; then
    source $HOME/.localrc
fi

if [[ ${ADD_PATHS:=true} ]]; then
    export PATH="$PATH:$HOME/bin:$HOME/.gem/bin:$HOME/.composer/vendor/bin"
fi

if [[ ${USE_GPG_SSH:=true} ]]; then
    export GPG_TTY=$(tty)
    gpgconf --launch gpg-agent
    export SSH_AUTH_SOCK=$HOME/.gnupg/S.gpg-agent.ssh
fi

if [[ ${USE_VIM:=true} ]]; then
    export EDITOR="/usr/bin/vim"
    alias vi=vim
fi    

if [[ ${USE_GOLANG:=true} ]]; then
    export GOPATH=$HOME/go
    export PATH="$PATH:$HOME/go"
fi

function pfix() {
if [ -d $1 ]; then 
    find $1 -type f -exec chmod 644 {} \; 
    find $1 -type d -exec chmod 755 {} \;
fi
}
