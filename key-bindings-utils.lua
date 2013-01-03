globalkeys = awful.util.table.join(globalkeys,
-- Terminal
    awful.key({         }, "twosuperior", function () awful.util.spawn(terminal) end),

-- Screen lock
    awful.key({         }, "Pause", function () awful.util.spawn(screenlocker) end),
    awful.key({ altkey, }, "Pause", function () awful.util.spawn("xset dpms force off") end),

-- Print screen
    awful.key({         }, "Print", function ()
                                   awful.util.spawn_with_shell("import -window root ~/screenshot-desktop-$(date +%F,%T).png")
                                 end),
    awful.key({ altkey, }, "Print", function ()
                                   awful.util.spawn_with_shell("import -frame -window $(xprop _NET_ACTIVE_WINDOW -root | awk '{print $5}') ~/screenshot-window-$(date +%F,%T).png")
                                 end)
)
