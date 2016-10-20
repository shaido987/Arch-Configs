
#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_AWT_WM_NONREPARENTING=1
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

setterm -blank 0 -powersave off -powerdown 0
xset s noblank
xset s off
xset -dpms

# Fonts
xset +fp /usr/share/fonts/misc
xset +fp /usr/share/fonts/local
xset +fp /usr/share/fonts/ttf
xset fp rehash

#DEFAULT_SESSION=xfce4-session
DEFAULT_SESSION=awesome
case $1 in
  xfce) exec dbus-launch xfce4-session ;;
  *) exec dbus-launch  $DEFAULT_SESSION ;;
esac

sleep 1 && feh --bg-center ~/pictures/ruby-dark.png
