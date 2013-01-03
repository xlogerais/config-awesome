-- Bottom statusbar

-- Create the left status wibox
myleftbar={}

for s = 1, screen.count() do

    -- Create the wibox
    myleftbar[s] = awful.wibox({ screen = s, position = "left", width=16, fg = beautiful.fg_normal, bg = beautiful.bg_normal })
    -- Change visibility to false
    myleftbar[s].visible=false
    -- Add widgets to the wibox - order matters
    myleftbar[s].widgets={ layout = awful.widget.layout.horizontal.leftright , { mytasklist[s] } }

end
