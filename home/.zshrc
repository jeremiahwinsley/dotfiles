source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
fi

antigen theme jeremiahwinsley/zsh themes/robbyrussell
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle StackExchange/blackbox
antigen apply

alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

export GOPATH=$HOME/go

if [ -f $HOME/.localrc ]; then
    source $HOME/.localrc
fi

if [ -f /usr/bin/vim ]; then
    alias vi=vim
fi

function pfix() {
if [ -d $1 ]; then 
    find $1 -type f -exec chmod 644 {} \; 
    find $1 -type d -exec chmod 755 {} \;
fi
}
