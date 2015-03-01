wibox_top = {}
for s = 1, screen.count() do
    -- Create the wibox
    wibox_top[s] = awful.wibox({ position = "top", screen = s })

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    --left_layout:add(mylauncher)
    left_layout:add(mylayoutbox[s])
    left_layout:add(mytaglist[s])

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    right_layout:add(myspacer)
    right_layout:add(notes_widget)
    right_layout:add(myspacer)
    right_layout:add(todo_widget_perso)
    right_layout:add(myspacer)
    right_layout:add(todo_widget_pro)
    right_layout:add(myspacer)
    right_layout:add(dateclock_widget)
    --right_layout:add(myspacer)
    --right_layout:add(date_text_widget)

    -- Now bring it all together (with the tasklist in the middle)
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    --layout:set_middle(mytasklist[s])
    layout:set_right(right_layout)

    wibox_top[s]:set_widget(layout)
end
