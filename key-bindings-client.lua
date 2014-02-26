-- Define key graber function for resizing clients

--function resize(c)
--keygrabber.run(function(mod, key, event)
--    if event == "release" then return true end
--
--    if     key == 'Up' then awful.client.moveresize(0, 0, 0, 5, c)
--    elseif key == 'Down' then awful.client.moveresize(0, 0, 0, -5, c)
--    elseif key == 'Right' then awful.client.moveresize(0, 0, 5, 0, c)
--    elseif key == 'Left' then awful.client.moveresize(0, 0, -5, 0, c)
--    else   keygrabber.stop()
--    end
--
--    return true
--end)
--
--clientkeys = awful.util.table.join( awful.key({ "Shift","Control" }, "r", function(c) resize(c) end ) )

-- Client awful tagging: this is useful to tag some clients and then do stuff like move to tag on them
clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end),

    awful.key({ modkey,           }, "m",
                                               function (c)
                                                            c.maximized_horizontal = not c.maximized_horizontal
                                                            c.maximized_vertical   = not c.maximized_vertical
                                               end),
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "y",      function (c) c.sticky = not c.sticky          end),
    awful.key({ modkey, "Control" }, "space",  function (c) awful.client.floating.toggle(c)
                                                            if awful.client.floating.get(c)
                                                            then awful.placement.no_overlap(c)
                                                            end
                                               end),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey, "Control" }, "t",      function (c) awful.titlebar.toggle(c)         end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end)
)
