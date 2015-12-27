if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

export TERMINAL=urxvt256c
xrdb -merge ~/.x11/urxvt256c
exec i3
