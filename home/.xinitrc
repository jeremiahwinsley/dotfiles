if [ -f ~/.fehbg ]; then
    sh ~/.fehbg &
fi

xrdb -merge ~/.x11/urxvt256c
exec i3
