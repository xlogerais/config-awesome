wibox_bottom = {}
for s = 1, screen.count() do
    -- Create the wibox
    wibox_bottom[s] = awful.wibox({ position = "bottom", screen = s })

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(mymenulauncher)
    left_layout:add(mypromptbox)

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    if s == screen.count() then
			right_layout:add(myspacer)
			right_layout:add(cpuwidget)
			right_layout:add(cpugraphwidget)
			right_layout:add(myspacer)
			right_layout:add(memwidget)
			right_layout:add(memgraphwidget)
			right_layout:add(myspacer)
			right_layout:add(mybatterywidget)
			right_layout:add(myspacer)
			right_layout:add(mysystray)
	end

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_right(right_layout)

    wibox_bottom[s]:set_widget(layout)
end
