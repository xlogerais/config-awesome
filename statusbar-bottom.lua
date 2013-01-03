-- Top statusbar

-- Create a wibox for each screen and add it
mybottombar = {}

for s = 1, screen.count() do

    -- Create the wibox
    mybottombar[s] = awful.wibox({ screen = s, position = "bottom", height="16", fg = beautiful.fg_normal, bg = beautiful.bg_normal })
    -- Add widgets to the wibox - order matters
    mybottombar[s].widgets = {
                             layout = awful.widget.layout.vertical.flex,
                             -- bottom row widgets,
                             { 
                               { -- bottom row, left-aligned widgets
                                 layout = awful.widget.layout.horizontal.leftright,
                                 s == 1 and mymenulauncher or nil,
                                 s == 1 and mypromptbox or nil,
                               },
                               {
                                 layout = awful.widget.layout.horizontal.rightleft,
                                 s == screen.count() and mysystray or nil,
                                 s == screen.count() and myspacer or nil,
                                 s == screen.count() and myscreenbox or nil,
                                 s == screen.count() and myspacer or nil,
                                 s == screen.count() and kbdcfg.widget or nil,
                               }
                             },
                          }

end
