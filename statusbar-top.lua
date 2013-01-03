-- Bottom statusbar

-- Create the top status wibox
mytopbar={}

for s = 1, screen.count() do

    -- Create the wibox
    mytopbar[s] = awful.wibox({ screen = s, visible=true, position = "top", height=16, fg = beautiful.fg_normal, bg = beautiful.bg_normal })
    -- Add widgets to the wibox - order matters

    mytopbar[s].widgets={
                           layout = awful.widget.layout.horizontal.leftright,
                           {
                             layout = awful.widget.layout.horizontal.leftright,
                             mylayoutbox[s] or nil,
                             mytaglist[s] or nil,
                             --s == 1 and mymenulauncher or nil,
                             --s == 1 and mypromptbox or nil,
                           },
                           { -- top row, right-aligned widgets
                             layout = awful.widget.layout.horizontal.rightleft,
                             s == screen.count() and myclockbox or nil,
                             s == screen.count() and myspacer or nil,
                             --s == screen.count() and mybatterywidget or nil,
                             --s == screen.count() and myspacer or nil,
                           }
}
end
