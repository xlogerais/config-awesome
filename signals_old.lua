-- Signal function to execute when a new client appears.
client.connect_signal("manage", function (c, startup)

    -- Add a titlebar
        if use_titlebar then
            awful.titlebar.add(c, { modkey = modkey })
        end

    -- Enable sloppy focus
    c:connect_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

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
end)

client.connect_signal("focus", function(c)
                               --if awful.client.property.get(c,maximized_horizontal) then
                               --    c.border_width = beautiful.border_width + 4
                               --else
                               --    c.border_width = beautiful.border_width
                               --end
                                c.border_width = beautiful.border_width
                               c.border_color = beautiful.border_focus
                               c.opacity = 1
                           end)

client.connect_signal("unfocus", function(c)
                               c.border_width = beautiful.border_width
                               c.border_color = beautiful.border_normal
							   c.maximized_horizontal = false
							   c.maximized_vertical = false
                               c.opacity = 0.85
                             end)

-- Arrange signal handler

for s = 1, screen.count() do screen[s]:connect_signal("arrange", function ()
    local clients = awful.client.visible(s)
    local layout = awful.layout.getname(awful.layout.get(s))

    for _, c in pairs(clients) do -- Floaters are always on top
        if awful.client.floating.get(c) or layout == "floating"
        then if not c.fullscreen then c.above       =  true  end
        else                          c.above       =  false end
    end

    for _, c in pairs(clients) do -- Maximized are always on top
        if awful.client.property.get(c,maximized_horizontal)
        then if not c.fullscreen then c.above       =  true  end
        else                          c.above       =  false end
    end

  end)
end

