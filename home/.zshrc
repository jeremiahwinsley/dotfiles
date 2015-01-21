source ~/.antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
if [[ `uname` == 'Darwin' ]]; then
    antigen bundle osx
fi

antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme robbyrussell
antigen apply

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/aria2/bin:/usr/local/go/bin:/usr/local/MacGPG2/bin:/Users/jeremiahwinsley/bin:/usr/local/mysql/bin:/Users/jeremiahwinsley/.composer/vendor/bin"
