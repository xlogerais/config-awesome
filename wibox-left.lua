wibox_left = {}
for s = 1, screen.count() do
    -- Create the wibox
    wibox_left[s] = awful.wibox({ position="left", screen=s, width=128, fg=beautiful.fg_normal, bg=beautiful.bg_normal})
    wibox_left[s].visible=false

    -- Widgets that are aligned to the top
    local top_layout = wibox.layout.fixed.horizontal()
    top_layout:add(mytaglist[s])

    -- Widgets that are aligned to the bottom
    local bottom_layout = wibox.layout.fixed.horizontal()
    --bottom_layout:add(myspacer)
    --bottom_layout:add(mybatterywidget)
    --bottom_layout:add(myspacer)
    --bottom_layout:add(myclockbox)
    --bottom_layout:add(mytextclock)

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.rotate()
	layout:set_direction("east")
    layout:set_widget(top_layout)
    layout:set_widget(mytasklist[s])
    layout:set_widget(bottom_layout)

    wibox_left[s]:set_widget(layout)
end
