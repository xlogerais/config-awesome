awful.rules.rules =
{
    -- All clients will match this rule.
    { rule = { },
      properties = {
                     keys = clientkeys,
                     buttons = clientbuttons,
                     focus = true,
                     opacity = 1,
                     border_width = beautiful.border_width+2,
                     border_color = beautiful.border_focus,
                     size_hints_honor = true,
                   }
    },

    -- Floating apps
    { rule = { class    = "Xmessage"     }, properties = { floating = true } },
    { rule = { class    = "pinentry"     }, properties = { floating = true } },
    { rule = { class    = "gimp"         }, properties = { floating = true } },
    { rule = { class    = "feh"          }, properties = { floating = true } },
    { rule = { class    = "display"      }, properties = { floating = true } },
    { rule = { class    = "XCalendar"    }, properties = { floating = true } },
    { rule = { class    = "Gsimplecal"   }, properties = { floating = true } },
    { rule = { class    = "XCalc"        }, properties = { floating = true } },

    { rule = { class    = "qemu"         }, properties = { floating = true } },
    { rule = { class    = "kvm"          }, properties = { floating = true } },

    { rule = { class    = "Vncviewer"    }, properties = { floating = true } },

    { rule = { class    = "Wicd"         }, properties = { floating = true } },

    -- Terminals
    { rule = { class = "XTerm"                            }, properties = { tag = tags[1][1] , switchtotag = true } },
    { rule = { class = "UXTerm"                           }, properties = { tag = tags[1][1] , switchtotag = true } },
    { rule = { class = "Rxvt"                             }, properties = { tag = tags[1][1] , switchtotag = true } },
    { rule = { class = "URxvt", instance = "urxvt"        }, properties = { tag = tags[1][1] , switchtotag = true } },

    -- Specific terminals
    --{ rule = { instance = "dropdown"     }, properties = { floating = true , sticky = true } },
    { rule = { instance = "mutt"         }, properties = { tag = tags[1][3] , switchtotag = true } },
    { rule = { instance = "mocp"         }, properties = { tag = tags[1][6] , floating = true  , switchtotag = true } },
    { rule = { instance = "ncmpc"        }, properties = { tag = tags[1][6] , floating = true  , switchtotag = true } },
    { rule = { instance = "alsamixer"    }, properties = { tag = tags[1][6] , floating = true  , switchtotag = true } },

    -- Desktop tools
    { rule = { class    = "XNots"        }, properties = { floating = true } },

    -- Browsers
    { rule = { role     = "browser"      }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Firefox"      }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Iceweasel"    }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Chrome"       }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Chromium"     }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "luakit"       }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Uzbl"         }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Midori"       }, properties = { tag = tags[1][2] , switchtotag = true } },
    { rule = { class    = "Vimprobable"  }, properties = { tag = tags[1][2] , switchtotag = true } },

    -- Office apps
    { rule = { class    = "Acroread"                      }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },
    { rule = { class    = "Epdfview"                      }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },
    { rule = { class    = "OpenOffice.org*"               }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },
    { rule = { class    = "libreoffice"                   }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },
    { rule = { instance = "libreoffice-*"                 }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },
    { rule = { class    = "ROX"                           }, properties = { tag = tags[screen.count()][5] , switchtotag = true } },

    -- Multimedia apps
    { rule = { class = "MPlayer"                          }, properties = { tag = tags[screen.count()][6] , floating = true , sticky = true } },
    { rule = { class = "Vlc"                              }, properties = { tag = tags[screen.count()][6] , floating = true , sticky = true } },
    { rule = { class = "mpv"                              }, properties = { tag = tags[screen.count()][6] , floating = true , sticky = true } },

    -- Communication apps
    { rule = { class    = "Pidgin", role = "buddy_list"   }, properties = { tag = tags[screen.count()][4] , switchtotag = false }, callback = awful.client.setmaster },
    { rule = { class    = "Pidgin", role = "conversation" }, properties = { tag = tags[screen.count()][4] , switchtotag = true  }, callback = awful.client.setslave  },
    { rule = { class    = "Pidgin", role = "account"      }, properties = { tag = tags[screen.count()][4] , switchtotag = true , floating = true }, callback = awful.client.setslave  },
    { rule = { instance = "finch"                         }, properties = { tag = tags[screen.count()][4] , switchtotag = true  }, callback = awful.client.setmaster },
    { rule = { instance = "irssi"                         }, properties = { tag = tags[screen.count()][4] , switchtotag = false }, callback = awful.client.setslave  },
    { rule = { class    = "Xchat"                         }, properties = { tag = tags[screen.count()][4] , switchtotag = true  } },
    { rule = { class    = "Linphone-3"                    }, properties = { tag = tags[screen.count()][4] , switchtotag = true  } },

    -- Tools
    { rule = { class    = "Virt-manager"                  }, properties = { tag = tags[screen.count()][8] , switchtotag = true  , floating = true } },

    -- Test unagi
    { rule = { class = "URxvt" }, properties = { opacity = 0.8 } },

}
