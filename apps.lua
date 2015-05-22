-- Prefered applications

terminal = "urxvt"
terminal_cmd = terminal .. " -e "

editor         = "scripts/launch-editor "

browser        = "scripts/launch-browser "
mailer         = "scripts/launch-mailer "

filebrowser    = "gentoo"

messenger      = "scripts/launch-messenger "

calculator     = "xcalc"
calendar       = "xcalendar"

audiomute      = "amixer -q set Master,0 playback toggle"
audiovolup     = "amixer -q set Master,0 5%+"
audiovoldown   = "amixer -q set Master,0 5%-"

audioplayer    = terminal .. " -name mocp -geometry 105x40 -e mocp"
audioplay      = "mocp -p"
audioplaypause = "mocp -G"
audiostop      = "mocp -s"
audioprev      = "mocp -r"
audionext      = "mocp -f"

screenlocker   = "scripts/lockscreen"
