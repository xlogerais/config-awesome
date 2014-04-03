-- Prefered applications

terminal = "urxvtc"
terminal_cmd = terminal .. " -e "

editor            = "scripts/launch-editor "

browser           = "scripts/launch-browser "
mailer            = "scripts/launch-mailer "

filebrowser = "rox"

messenger         = "scripts/launch-messenger "

calendar          = "gsimplecal"
calculator        = "xcalc"

audiomute    = "amixer -q set Master,0 playback toggle"
audiovolup   = "amixer -q set Master,0 5%+"
audiovoldown = "amixer -q set Master,0 5%-"

audioplayer    = terminal .. " -name mocp -geometry 105x40 -e mocp"
audioplay      = "mocp -p"
audioplaypause = "mocp -G"
audiostop      = "mocp -s"
audioprev      = "mocp -r"
audionext      = "mocp -f"

screenlocker = "i3lock -c 000000 -i .lockscreen"
