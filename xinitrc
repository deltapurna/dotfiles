[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# exec openbox-session              # starts the window manager
exec dbus-launch --exit-with-session openbox-session
# exec urxvt
