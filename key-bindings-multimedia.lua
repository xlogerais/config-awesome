globalkeys = awful.util.table.join(globalkeys,
    awful.key({                   }, "XF86Sleep",            function () awful.util.spawn(screenlocker) end),
    awful.key({                   }, "XF86Standby",          function () awful.util.spawn("xset dpms force off") end),

    awful.key({                   }, "XF86HomePage",         function () awful.util.spawn(browser)           end),
    awful.key({                   }, "XF86WWW",              function () awful.util.spawn(browser)               end),
    --awful.key({                   }, "XF86Forward",          function () awful.client.swap.byidx(  1)            end),
    --awful.key({                   }, "XF86Back",             function () awful.client.swap.byidx( -1)            end),
    awful.key({                   }, "XF86Favorites",        function () awful.util.spawn(terminal)              end),
    awful.key({                   }, "XF86Mail",             function () awful.util.spawn(mailer)                end),
    awful.key({                   }, "XF86Calculator",       function () awful.util.spawn("xcalc")               end),

    awful.key({                   }, "XF86AudioMute",        function () awful.util.spawn(audiomute)    end),
    awful.key({                   }, "XF86AudioRaiseVolume", function () awful.util.spawn(audiovolup)   end),
    awful.key({                   }, "XF86AudioLowerVolume", function () awful.util.spawn(audiovoldown) end),

    awful.key({ modkey            }, "XF86AudioPlay",        function () awful.util.spawn(audioplayer) end),
    awful.key({ "Control"         }, "XF86AudioPlay",        function () awful.util.spawn(audioplay) end),
    awful.key({ "Shift"           }, "XF86AudioPlay",        function () awful.util.spawn(audiostop) end),
    awful.key({                   }, "XF86AudioPlay",        function () awful.util.spawn(audioplaypause) end),
    awful.key({                   }, "XF86AudioStop",        function () awful.util.spawn(audiostop) end),
    awful.key({                   }, "XF86AudioPrev",        function () awful.util.spawn(audioprev) end),
    awful.key({                   }, "XF86AudioNext",        function () awful.util.spawn(audionext) end)
)
