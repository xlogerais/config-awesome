wibox_right = {}
require("widgets-right")

for s = 1, screen.count() do
    -- Create the wibox
    wibox_right[s] = awful.wibox({ position="right", screen=s, width=256, fg=beautiful.fg_normal, bg=beautiful.bg_normal})
    wibox_right[s].visible=false

    -- Widgets that are aligned to the top
    local top_layout = wibox.layout.fixed.vertical()
    top_layout:add(horizontal_spacer)
    top_layout:add(right_cpu_text_label)
    top_layout:add(right_cpu_text_widget)
    top_layout:add(horizontal_spacer)
    top_layout:add(right_cpu_progressbar_widget)
    top_layout:add(horizontal_spacer)
    top_layout:add(right_cpu_graph_widget)

    -- Widgets that are in the middle
    local middle_layout = wibox.layout.fixed.vertical()
    middle_layout:add(right_mem_text_label)
    middle_layout:add(right_mem_text_widget)
    middle_layout:add(horizontal_spacer)
    middle_layout:add(right_mem_progressbar_widget)
    middle_layout:add(horizontal_spacer)
    middle_layout:add(right_mem_graph_widget)

    -- Widgets that are aligned to the bottom
    local bottom_layout = wibox.layout.fixed.vertical()
    bottom_layout:add(right_vol_text_label)
    bottom_layout:add(right_vol_text_widget)
    bottom_layout:add(right_vol_progressbar_widget)

    -- Now bring it all together (with the tasklist in the middle)
    --local layout = wibox.layout.rotate()
	--layout:set_direction("north")
    --layout:set_widget(top_layout)
    --layout:set_widget(mytasklist[s])
    --layout:set_widget(bottom_layout)

	local layout = wibox.layout.align.vertical()
    layout:set_top(top_layout)
    layout:set_middle(middle_layout)
    layout:set_bottom(bottom_layout)

    wibox_right[s]:set_widget(layout)
    --wibox_right[s]:set_widget(myalign)
end
