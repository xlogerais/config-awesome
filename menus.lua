-- Menus

menu_web = {
   { "Firefox"  , "firefox" },
   { "Chromium" , "chromium" },
   { "Luakit"   , "luakit" },
   { "Uzbl"     , "uzbl-browser" },
   { "Midori"   , "midori" },
}

menu_mail = {
   { "Mutt", terminal .. " -name mutt -geometry 120x40 -e mutt" },
   { "Thunderbird", "thunderbird" },
}
menu_communication = {
   { "finch", terminal .. " -name finch -geometry 120x40 -e finch" },
   { "irssi", terminal .. " -name irssi -geometry 120x40 -e irssi" },
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
   { "mpd", terminal .. " -name ncmpc -geometry 120x40 -e ncmpc" },
   { "  mpd  play", "mpc toggle" },
   { "  mpd stop", "mpc stop" },
   { "  mpd next", "mpc next" },
   { "  mpd prev", "mpc prev" },
   {"", nil },
   { "mocp", terminal .. " -name mocp -geometry 120x40 -e mocp" },
   { "  moc play", "mocp -p" },
   { "  moc stop", "mocp -s" },
   { "  moc next", "mocp -f" },
   { "  moc prev", "mocp -r" },
   {"", nil },
   { "mute/unmute", "amixer -q set Master toggle" },
   { "set volume", terminal .. " -name alsamixer -geometry 120x40 -e alsamixer" },
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

--
-- Themes
--
function generate_theme_menu(path)
  -- For each dir in path array
  for index,dir in next,path do
    -- List your theme files and feed the menu table
    local f = io.popen("ls -1 " .. dir)

    for l in f:lines() do
      local item = { l .. '(' .. dir .. ')' , function () load_theme(dir .. "/" .. l .. "/theme.lua" ) end }
      table.insert(menu_themes, item)
    end
    f:close()
  end
end

function load_theme(theme)
  local cfg_path = awful.util.getdir("config")
  -- Create a symlink from the given theme to /home/user/.config/awesome/theme.lua
  awful.util.spawn("ln -sfn " .. theme .. " " .. cfg_path .. "/theme.lua")
  awesome.restart()
end

menu_themes = {}
themes_path = { "/usr/share/awesome/themes/", awful.util.getdir("config") .. "/themes/new" }
generate_theme_menu(themes_path)

--
-- Main menu
--
mymainmenu = 
awful.menu.new(
{
  items =
  {
    { "Terminal", terminal },
    { "Web", browser },
    { "Mails", mailer },
    { "Pidgin", messenger },
    { "Irssi", terminal .. " -name irssi -geometry 120x40 -e irssi" },
    { "", nil },
    { "Calendrier", calendar },
    { "Calculatrice", calculator },
    { "", nil },
    { "Fichiers", filebrowser },
    { "", nil },
    { "Volume", terminal .. " -name alsamixer -geometry 120x40 -e alsamixer" },
    { "", nil },
    { "Bureautique", menu_office },
    { "Web", menu_web },
    { "Mail", menu_mail },
    { "Communication", menu_communication },
    { "Multimédia", menu_media },
    { "", nil },
    { "Session", menu_session },
    { "", nil },
    { "Thèmes", menu_themes },
    { "", nil },
    { "Système", menu_power },
    { "", nil },
    { "Vérouiller", screenlocker },
  },
})

