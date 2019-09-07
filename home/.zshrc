source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git

if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
fi

antigen theme jeremiahwinsley/zsh themes/robbyrussell
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen apply

alias grep="grep --color"
alias egrep="egrep --color"
alias fgrep="fgrep --color"

alias ap="ansible-playbook -i hosts"
alias apb="ansible-playbook -i hosts --ask-become-pass"
alias drb="docker-compose up --build --force-recreate -d"

export GOPATH=$HOME/go
export PATH="$PATH:$HOME/bin"

if [ -f $HOME/.localrc ]; then
    source $HOME/.localrc
fi

if [[ ${USE_COMPOSER} == true ]]; then
    if [[ -d "$HOME/.composer" ]]; then
        export PATH="$PATH:$HOME/.composer/vendor/bin"
    elif [[ -d "$HOME/.config/composer" ]]; then
        export PATH="$PATH:$HOME/.config/composer/vendor/bin"
    fi
fi

if [[ ${USE_GPG_SSH} == true && $UID != 0 ]]; then
    export GPG_TTY=$(tty)
    gpg-connect-agent /bye
    export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
fi

if [[ ${USE_VIM} == true ]]; then
    export EDITOR="/usr/bin/vim"
    alias vi=vim
fi    

if [[ ${USE_GOLANG} == true ]]; then
    export GOPATH=$HOME/go
    export PATH="$PATH:$HOME/go/bin"
fi

function pfix() {
if [ -d $1 ]; then 
    find $1 -type f -exec chmod 644 {} \; 
    find $1 -type d -exec chmod 755 {} \;
fi
}
