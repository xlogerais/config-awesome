globalkeys = awful.util.table.join(
    -- Window manager
    awful.key({ modkey, "Control"  }, "r", awesome.restart),
    awful.key({ modkey, "Shift"    }, "q", awesome.quit),

    -- Screen Manipulation
    awful.key({ modkey, "Control"  }, "j",        function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control"  }, "k",        function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,            }, "less",     function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey,            }, "greater",  function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,            }, "F1",       function () awful.screen.focus(1)           end),
    awful.key({ modkey,            }, "F2",       function () awful.screen.focus(2)           end),

    -- Statusbar manipulation
    awful.key({ "Control", "Shift" }, "t",                    function () mytopbar[mouse.screen].visible = not mytopbar[mouse.screen].visible end),
    awful.key({ "Control", "Shift" }, "b",                    function () mybottombar[mouse.screen].visible = not mybottombar[mouse.screen].visible end),
    awful.key({ "Control", "Shift" }, "l",                    function () myleftbar[mouse.screen].visible = not myleftbar[mouse.screen].visible end),
    awful.key({ "Control", "Shift" }, "r",                    function () myrightbar[mouse.screen].visible = not myrightbar[mouse.screen].visible end),

    -- Layouts
    awful.key({ modkey,            }, "space",    function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"    }, "space",    function () awful.layout.inc(layouts, -1) end),

    awful.key({ modkey,            }, "l", function () awful.tag.incmwfact( 0.05)   end),
    awful.key({ modkey,            }, "h", function () awful.tag.incmwfact(-0.05)   end),
    awful.key({ modkey, "Shift"    }, "h", function () awful.tag.incnmaster( 1)     end),
    awful.key({ modkey, "Shift"    }, "l", function () awful.tag.incnmaster(-1)     end),
    awful.key({ modkey, "Control"  }, "h", function () awful.tag.incncol( 1)        end),
    awful.key({ modkey, "Control"  }, "l", function () awful.tag.incncol(-1)        end),

    -- Clients

    -- application switcher: Alt - Tab
    awful.key({ "Mod1" }, "Tab",
        function ()
            -- If you want to always position the menu on the same place set coordinates
            awful.menu.menu_keys.down = { "Down", "Alt_L" }
            awful.menu.menu_keys.exec = { "Right", "Return" }
            local cmenu = awful.menu.clients({width=400}, { keygrabber=true, coords={x=440, y=330} })
        end),

    -- client select
    awful.key({ modkey,           }, "Up",
        function ()
            awful.client.focus.bydirection("up")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey,           }, "Down",
        function ()
            awful.client.focus.bydirection("down")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey,           }, "Left",
        function ()
            awful.client.focus.bydirection("left")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey,           }, "Right",
        function ()
            awful.client.focus.bydirection("right")
            if client.focus then client.focus:raise() end
        end),

    -- client move
    awful.key({ modkey, "Shift"     }, "Up",
        function ()
            awful.client.swap.bydirection("up")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey, "Shift"     }, "Down",
        function ()
            awful.client.swap.bydirection("down")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey, "Shift"     }, "Left",
        function ()
            awful.client.swap.bydirection("left")
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey, "Shift"     }, "Right",
        function ()
            awful.client.swap.bydirection("right")
            if client.focus then client.focus:raise() end
        end),

    -- client switch
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end),

    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1) end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1) end),
   
    -- Unminimize clients
    awful.key({ modkey, "Control" }, "n", awful.client.restore),
    awful.key({ modkey, "Shift"   }, "n",
        function ()
            local allclients = client.get(mouse.screen)
    
            for _,c in ipairs(allclients) do
                if c.minimized and c:tags()[mouse.screen] == awful.tag.selected(mouse.screen) then
                    c.minimized = false
                    client.focus = c
                    c:raise()
                    return
                end
            end
        end),

    -- Jump to urgent
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),

    -- Menus
    awful.key({ modkey, "Control" }, "m",           function() menubar.show() end ),
    awful.key({ modkey,           }, "twosuperior", function () mymainmenu:show({keygrabber=true}) end),
   
    -- Launch standard programs
    awful.key({ modkey,            }, "Return",               function () awful.util.spawn(terminal) end),
    awful.key({ modkey, "Shift"    }, "Return",               function () awful.util.spawn("uxterm") end),
    awful.key({ "Control", "Mod1"  }, "l",                    function () awful.util.spawn(screenlocker) end),
   
    -- Revelation
    awful.key({ modkey,            }, "e", revelation),

    -- Dropdown Term
    awful.key({ "Control"          }, "twosuperior", function () teardrop.toggle(terminal .. " -name dropdown","bottom","center",0.80,0.25,true) end)
)
