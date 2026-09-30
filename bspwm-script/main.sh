#! /bin/sh

#_________________Тема мышки__________________
export XCURSOR_THEME=mouse_icons
export XCURSOR_SIZE=24
xsetroot -cursor_name left_ptr &
#_____________________________________________

#_________________Фон_________________________
feh --bg-fill "/home/reror/Рабочий стол/BSPWM-Ubuntu/fon/back_fon/Back_fon_BSPWM.png" &
#_____________________________________________

#_________________Polybar____________________
pkill polybar
polybar main &
#_____________________________________________

#_________________Композитор__________________
pgrep -x picom > /dev/null || picom --config ~/.config/picom/picom.conf --experimental-backends -b
#_____________________________________________

#_________________Цвета и границы_____________
bspc config focused_border_color "#FF8C00"
bspc config normal_border_color  "#FF0000"
bspc config border_width         2
bspc config focus_follows_pointer true
#_____________________________________________

#_________________Горячие клавиши_____________
pgrep -x sxhkd > /dev/null || sxhkd &

#_________________Рабочие столы_______________
bspc monitor -d I II III IV

bspc config window_gap          12
bspc config split_ratio          0.52
bspc config borderless_monocle   true
bspc config gapless_monocle      true

#_________________Правила окон________________
bspc rule -a Gimp desktop='^4' state=floating follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off
bspc rule -a Nautilus state=floating follow=on
bspc rule -a firefox state=floating follow=on
bspc rule -a Firefox state=floating follow=on
bspc rule -a kitty state=floating follow=on