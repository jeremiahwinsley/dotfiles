source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
fi

antigen theme jeremiahwinsley/zsh themes/robbyrussell
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"


if [ -f $HOME/.localrc ]; then
    source $HOME/.localrc
fi

