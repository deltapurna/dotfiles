[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

exec openbox-session              # starts the window manager
# exec urxvt
