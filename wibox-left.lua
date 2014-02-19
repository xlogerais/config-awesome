wibox_left = {}
for s = 1, screen.count() do
    -- Create the wibox
    wibox_left[s] = awful.wibox({ position="left", screen=s, width=64, fg=beautiful.fg_normal, bg=beautiful.bg_normal})

    -- Widgets that are aligned to the top
    local top_layout = wibox.layout.fixed.horizontal()
    top_layout:add(mytaglist[s])

    -- Widgets that are aligned to the bottom
    local bottom_layout = wibox.layout.fixed.horizontal()
    --right_layout:add(myspacer)
    --right_layout:add(mybatterywidget)
    --right_layout:add(myspacer)
    --right_layout:add(myclockbox)
    --right_layout:add(mytextclock)

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.rotate()
	layout:set_direction("east")
    layout:set_widget(top_layout)
    layout:set_widget(mytasklist[s])
    layout:set_widget(bottom_layout)

    wibox_left[s]:set_widget(layout)
end
