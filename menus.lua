-- Menus

menu_web = {
   { "Firefox"  , "firefox" },
   { "Chromium" , "chromium" },
   { "Luakit"   , "luakit" },
   { "Uzbl"     , "uzbl-browser" },
   { "Midori"   , "midori" },
}

menu_mail = {
   { "Mutt", terminal .. " -name mutt -geometry 105x40 -e mutt" },
   { "Thunderbird", "thunderbird" },
}
menu_communication = {
   { "finch", terminal .. " -name finch -geometry 105x40 -e finch" },
   { "irssi", terminal .. " -name irssi -geometry 105x40 -e irssi" },
   { "", nil },
   { "Pidgin", "pidgin" },
   { "aMSN", "amsn" },
}

menu_office = {
   { "Rox", "rox" },
   { "OpenOffice", "soffice" },
   { "The Gimp", "gimp" }
}

menu_audio = {
   { "mpd", terminal .. " -name ncmpc -geometry 105x40 -e ncmpc" },
   { "  mpd  play", "mpc toggle" },
   { "  mpd stop", "mpc stop" },
   { "  mpd next", "mpc next" },
   { "  mpd prev", "mpc prev" },
   {"", nil },
   { "mocp", terminal .. " -name mocp -geometry 105x40 -e mocp ~/.moc/playlist.m3u" },
   { "  moc play", "mocp -p" },
   { "  moc stop", "mocp -s" },
   { "  moc next", "mocp -f" },
   { "  moc prev", "mocp -r" },
   {"", nil },
   { "mute/unmute", "amixer -q set Master toggle" },
   { "set volume", terminal .. " -name alsamixer -geometry 210x40 -e alsamixer" },
}

menu_video = {
   { "mplayer", "smplayer" },
   { "vlc", "vlc" },
}

menu_radio = {
   { "BFM",                              "radio bfm"        },
   { "Voltage",                          "radio voltage"    },
   { "Fun",                              "radio fun"        },
   { "FG",                               "radio fg"         },
   { "Latina",                           "radio latina"     },
   { "TSF",                              "radio tsf"        },
   { "SmoothJazz",                       "radio smoothjazz" },
   { "Digital Importated Trance",        "radio ditrance"    },
   { "Digital Importated Vocal Trance",  "radio divocaltrance"    },
}

menu_tv = {
   { "France 2", "tv france.2" },
   { "France 3", "tv france.3" },
   { "France 4", "tv france.4" },
   { "France 5", "tv france.5" },
   { "BFM",      "tv bfm"       },
   { "i>Télé",    "tv i>"     },
   { "Game One", "tv game"      },
   { "No Life",  "tv nolife"    },
}


menu_network = {
   { "Web", menu_web },
   { "Mail", menu_mail },
   { "Communication", menu_communication },
}

menu_media = {
   { "Musique", menu_audio },
   { "Vidéo", menu_video },
   { "Radio", menu_radio },
   { "Télévision", menu_tv },
}

menu_session= {
   { "Vérouiller", screenlocker   },
   { "Redémarrer", awesome.restart },
   { "Quitter",   awesome.quit },
}

menu_power= {
   { "Redémarrer", "sudo reboot"   },
   { "Eteindre",   "sudo poweroff" },
}

mymainmenu = 
awful.menu.new(
{ width = 125,
  items =
  {
   { "Terminal", terminal },
   { "Web", browser },
   { "Mails", mailer },
   { "Messenger", messenger },
   { "irssi", terminal .. " -name irssi -geometry 105x40 -e irssi" },
   { "", nil },
   { "Calendrier", calendar },
   { "Calculatrice", calculator },
   { "", nil },
   { "Fichiers", "rox" },
   { "", nil },
   { "Volume", terminal .. " -name alsamixer -geometry 210x40 -e alsamixer" },
   { "", nil },
   { "Réseau", menu_network },
   { "Multimédia", menu_media },
   { "Bureautique", menu_office },
   { "", nil },
   { "Session", menu_session },
   { "", nil },
   { "Système", menu_power },
   { "", nil },
   { "Vérouiller", screenlocker },
 }
})

