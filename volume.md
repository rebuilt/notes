pavucontrol
pactl set-sink-volume alsa_output.usb-Topping_D10-00.analog-stereo 100%

pactl
pactl set-sink-volume @DEFAULT_SINK@ +5%
pactl command is used to control a running PulseAudio sound server.

Increase volume by 10%

pactl -- set-sink-volume 0 +10%

Decrease volume by 10%

pactl -- set-sink-volume 0 -10%

Set volume to 80%

pactl -- set-sink-volume 0 80%

Set volume to 200%

pactl -- set-sink-volume 0 200%

amixer

amixer is a command-line mixer for ALSA soundcard driver.

Increase volume by 10%

amixer set 'Master' 10%+

Decrease volume by 10%

amixer set 'Master' 10%-

Set volume to 10%

amixer set 'Master' 10%

Set volume to 80%

amixer set 'Master' 80%

Shows a complete list of simple mixer controls

amixer scontrols

