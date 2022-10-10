#autostart

if [ -d "$HOME/.local/bin" ] ; then

    PATH="$HOME/.local/bin:$PATH"

fi

pipewire &

pipewire-pulse &

exec dbus-run-session bspwm
