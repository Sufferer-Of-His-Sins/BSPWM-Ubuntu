[colors]
background     = #1e1e2e
background-alt = #313244
foreground     = #cdd6f4
primary        = #89b4fa
secondary      = #f5c2e7
alert          = #f38ba8
disabled       = #6c7086
green          = #a6e3a1
yellow         = #f9e2af
orange         = #fab387

[bar/main]
width = 98%
height = 32
offset-x = 1%
offset-y = 8
radius = 12
fixed-center = true

background = ${colors.background}
foreground = ${colors.foreground}

border-size = 0
padding-left = 2
padding-right = 2
module-margin = 1

font-0 = JetBrainsMono Nerd Font:size=11;2
font-1 = JetBrainsMono Nerd Font:size=13;3
font-2 = Font Awesome 6 Free Solid:size=11;2

modules-left   = bspwm firefox folder terminal
modules-center = 
modules-right  = temperature memory pulseaudio network date

cursor-click = pointer
cursor-scroll = ns-resize

enable-ipc = true

[module/bspwm]
type = internal/bspwm
pin-workspaces = true
inline-mode = false
enable-click = true
enable-scroll = true
reverse-scroll = false

label-focused = %name%
label-focused-foreground = ${colors.background}
label-focused-background = ${colors.primary}
label-focused-padding = 2
label-focused-margin = 1

label-occupied = %name%
label-occupied-foreground = ${colors.foreground}
label-occupied-padding = 2
label-occupied-margin = 1

label-urgent = %name%
label-urgent-foreground = ${colors.background}
label-urgent-background = ${colors.alert}
label-urgent-padding = 2
label-urgent-margin = 1

label-empty = %name%
label-empty-foreground = ${colors.disabled}
label-empty-padding = 2
label-empty-margin = 1

[module/folder]
type = custom/text
content = 󰉋
content-foreground = ${colors.yellow}
content-padding = 2
click-left = nautilus &

[module/temperature]
type = internal/temperature
thermal-zone = 0
warn-temperature = 70

format = <ramp> <label>
format-padding = 1

label = %temperature-c%
label-warn = %temperature-c%
label-warn-foreground = ${colors.alert}

ramp-0 = 
ramp-1 = 
ramp-2 = 
ramp-3 = 
ramp-4 = 
ramp-0-foreground = ${colors.green}
ramp-1-foreground = ${colors.green}
ramp-2-foreground = ${colors.yellow}
ramp-3-foreground = ${colors.orange}
ramp-4-foreground = ${colors.alert}

[module/memory]
type = internal/memory
interval = 2
format = <label>
format-prefix = "󰍛 "
format-prefix-foreground = ${colors.primary}
label = %percentage_used%%
label-padding = 1

[module/pulseaudio]
type = internal/pulseaudio
format-volume = <ramp-volume> <label-volume>
format-muted = <label-muted>
label-volume = %percentage%%
label-muted = 󰝟 muted
label-muted-foreground = ${colors.disabled}

ramp-volume-0 = 󰕿
ramp-volume-1 = 󰖀
ramp-volume-2 = 󰕾
ramp-volume-0-foreground = ${colors.green}
ramp-volume-1-foreground = ${colors.yellow}
ramp-volume-2-foreground = ${colors.orange}

click-right = pavucontrol &
scroll-up = pactl set-sink-volume @DEFAULT_SINK@ +5%
scroll-down = pactl set-sink-volume @DEFAULT_SINK@ -5%

[module/network]
type = internal/network
interface = 
interface-type = wireless
interval = 3

format-connected = <label-connected>
format-disconnected = <label-disconnected>

label-connected = 󰤨 %essid%
label-connected-foreground = ${colors.green}
label-disconnected = 󰤭 offline
label-disconnected-foreground = ${colors.alert}

click-left = ~/.config/polybar/scripts/network-menu.sh &

[module/firefox]
type = custom/text
content = 󰈹
content-foreground = #ff7139
content-padding = 2
click-left = firefox &
click-right = firefox --private-window &

[module/terminal]
type = custom/text
content = 󰆍
content-foreground = ${colors.green}
content-padding = 2
click-left = kitty &

[module/date]
type = internal/date
interval = 1
date = %H:%M
date-alt = %a %d %b
label = %date%
label-padding = 2
format-prefix = "󰥔 "
format-prefix-foreground = ${colors.secondary}