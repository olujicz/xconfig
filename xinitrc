#!/bin/bash

eval $(gpg-agent --daemon)
eval $(ssh-agent)
wmname LG3D

# Keyboard
setxkbmap -option compose:rwin,lv3:ralt_switch,grp:alt_shift_toggle,grp_led:scroll rs,us latinyz, &
setxkbmap -option ctrl:nocaps &

xrdb ~/.Xdefaults
dunst & # notification
unclutter -root -visible & # Hide mouse coursor when it isn't used
xautolock -time 10 -locker slock &
numlockx &
rofi -key mod1+Tab -font "snap-12" -bc "#dcdccc" -fg "#dcdccc" -bg "#484848" -hlfg "#fff" -hlbg "#333333" -o 90 -term "rofi-term" &

# Composition manager
compton --config ~/.i3/compton.conf &

# Color temperature adjustment
redshift -l 54.35:18.65 -m randr -t 5500:4500 -g 0.75:0.75:0.75 &

session=$@
if [ -z "${session}" ]; then
        session="i3"
        fi
        exec $session
