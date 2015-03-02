-- {{{ Signals

-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)

  if not startup then
    -- Set the windows at the slave,
    -- i.e. put it at the end of others instead of setting it master.
    -- awful.client.setslave(c)

    -- Put windows in a smart way, only if they does not set an initial position.
    if not c.size_hints.user_position and not c.size_hints.program_position then
      awful.placement.no_overlap(c)
      awful.placement.no_offscreen(c)
    end
  end

  if titlebars_enabled and (c.type == "normal" or c.type == "dialog") then
    -- buttons for the titlebar
    local buttons = awful.util.table.join(
    awful.button({ }, 1, function()
      client.focus = c
      c:raise()
      awful.mouse.client.move(c)
    end),
    awful.button({ }, 3, function()
      client.focus = c
      c:raise()
      awful.mouse.client.resize(c)
    end)
    )

    -- Widgets that are aligned to the left
    local left_layout = wibox.layout.fixed.horizontal()
    left_layout:add(awful.titlebar.widget.iconwidget(c))
    left_layout:buttons(buttons)

    -- The title goes in the middle
    local middle_layout = wibox.layout.flex.horizontal()
    local title = awful.titlebar.widget.titlewidget(c)
    title:set_align("center")
    middle_layout:add(title)
    middle_layout:buttons(buttons)

    -- Widgets that are aligned to the right
    local right_layout = wibox.layout.fixed.horizontal()
    right_layout:add(awful.titlebar.widget.floatingbutton(c))
    right_layout:add(awful.titlebar.widget.maximizedbutton(c))
    right_layout:add(awful.titlebar.widget.stickybutton(c))
    right_layout:add(awful.titlebar.widget.ontopbutton(c))
    right_layout:add(awful.titlebar.widget.closebutton(c))

    -- Now bring it all together
    local layout = wibox.layout.align.horizontal()
    layout:set_left(left_layout)
    layout:set_middle(middle_layout)
    layout:set_right(right_layout)

    awful.titlebar(c):set_widget(layout)
  end

  c:connect_signal("focus", function(c)
    c.border_width = beautiful.border_width
    c.border_color = beautiful.border_focus
    c.opacity = 1
  end)

  c:connect_signal("unfocus", function(c)
    c.border_width = beautiful.border_width
    c.border_color = beautiful.border_normal
    c.opacity = 0.7
    -- Fullscreen clients loose fullscreen when they loose focus
    if c.fullscreen then c.fullscreen = false end
    -- Maximized clients are unmaximized when they loose focus
    if c.maximized then c.maximized = false end
  end)

  -- Enable sloppy focus
  c:connect_signal("mouse::enter", function(c)
    if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
      and awful.client.focus.filter(c) then
      client.focus = c
    end
  end)

end)

-- Arrange signal handler

for s = 1, screen.count() do screen[s]:connect_signal("arrange", function ()
  local clients = awful.client.visible(s)
  local layout = awful.layout.getname(awful.layout.get(s))

  for _, c in pairs(clients) do -- Floaters are always on top
    if awful.client.floating.get(c) or layout == "floating"
      then if not c.fullscreen then c.above =  true  end
    else                          c.above   =  false end
  end

  for _, c in pairs(clients) do -- Maximized are always on top
    if awful.client.property.get(c,maximized)
      then if not c.fullscreen then c.above =  true  end
    else                          c.above   =  false end
  end

end)

end

-- }}}
