#!/bin/bash

if [[ x"$BASH" != x"/bin/bash" ]]; then
  exec /bin/bash "$HOME/.xinitrc"
fi

cd
source $HOME/.bash_profile

xsetroot -solid '#000000'
xrdb -merge .Xresources
xmodmap .Xmodmap

xset b 0
xset r rate 250 60

#xv -root -quit -maxpect ~/Dropbox/images/repetition_by_ryohei_hase-d4s74gg.jpg

terminal &
terminal &
exec xmonad
