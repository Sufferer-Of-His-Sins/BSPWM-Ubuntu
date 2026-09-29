#! /bin/sh

export XCURSOR_THEME=/home/reror/Рабочий стол/BSPWM-Ubuntu/fon/mouse_icons
export XCURSOR_SIZE=24
xsetroot -cursor_name left_ptr &

pgrep -x sxhkd > /dev/null || sxhkd &

bspc monitor -d I II III IV

bspc config border_width         2
bspc config window_gap          12

bspc config split_ratio          0.52
bspc config borderless_monocle   true
bspc config gapless_monocle      true

bspc rule -a Gimp desktop='^4' state=floating follow=on
bspc rule -a Chromium desktop='^2'
bspc rule -a mplayer2 state=floating
bspc rule -a Kupfer.py focus=on
bspc rule -a Screenkey manage=off

feh --bg-fill /home/reror/Рабочий стол/BSPWM-Ubuntu/fon/back_fon/Back_fon_BSPWM.png &
