globalkeys = awful.util.table.join(globalkeys,
 awful.key({ modkey,altkey }, "k", function(c)

	keygrabber_popup = naughty.notify({ timeout=0 , screen = 1 ,position = "top_left", title = "<big>Keygrabber</big>", text = "Mode test actif" })

	keygrabber.run(function(mod, key, event)

        if event == "release" then return true end

        if key == 'Up' then naughty.notify({ position = "top_right", title = "<big>Keygrabber</big>", text = "You pressed Up" })
        elseif key == 'Down' then naughty.notify({ position = "top_right", title = "<big>Keygrabber</big>", text = "You pressed  Down" })
        elseif key == 'Right' then naughty.notify({ position = "top_right", title = "<big>Keygrabber</big>", text = "You pressed Right" })
        elseif key == 'Left' then naughty.notify({ position = "top_right", title = "<big>Keygrabber</big>", text = "You pressed Left" })
        elseif key == 'p' then
          keygrabber.stop()
          naughty.destroy(keygrabber_popup)
          mypowermenu = awful.menu({width=1280,items = menu_power})
          mypowermenu:show({keygrabber=true,coords={x=0, y=48}}) 
            --awful.menu.menu_keys.down = { "Down", "Alt_L" }
            --awful.menu.menu_keys.exec = { "Right", "Return" }
            --local cmenu = awful.menu.new({width=400}, { keygrabber=false, coords={x=440, y=330} , items = menu_power })
        else
          keygrabber.stop()
          naughty.destroy(keygrabber_popup)
        end

        return true 
        end)

 end)
)

-- mapping for modal client keys
client_mode = {
    -- Set client on top
    o = function (c) c.ontop = not c.ontop end,
    -- Set client stick
    s = function (c) c.sticky = not c.sticky end,
    -- Redraw the client
    d = function (c) c:redraw() end,
    -- Toggle floating status of the client
    u = awful.client.floating.toggle,
    -- toggle mark
    t = awful.client.togglemarked,
    -- make the client fullscreen
    f = function (c) c.fullscreen = not c.fullscreen  end,
    -- maximize the client
    x = function (c)
        c.maximized_horizontal = not c.maximized_horizontal
        c.maximized_vertical   = not c.maximized_vertical
    end,
    n = function (c) c.minimized = not c.minimized end,
    -- resize the client
    r = function (c)
        keygrabber.run(function(mod, key, event)
            if event == "release" then
                return true
            end

            if     key == 'Up'   then awful.client.moveresize(0, 0, 0, 5, c)
            elseif key == 'Down' then awful.client.moveresize(0, 0, 0, -5, c)
            elseif key == 'Right' then awful.client.moveresize(0, 0, 5, 0, c)
            elseif key == 'Left'  then awful.client.moveresize(0, 0, -5, 0, c)
            else   keygrabber.stop()
            end

            return true
        end)
    end,
    -- move the client
    m = function (c)
        keygrabber.run(function(mod, key, event)
            if event == "release" then
                return true
            end

            if     key == 'Up'    then awful.client.moveresize(0, -5, 0, 0, c)
            elseif key == 'Down'  then awful.client.moveresize(0, 5, 0, 0, c)
            elseif key == 'Right' then awful.client.moveresize(5, 0, 0, 0, c)
            elseif key == 'Left'  then awful.client.moveresize(-5, 0, 0, 0, c)
            else   keygrabber.stop()
            end

            return true
        end)
    end
}

 -- trigger client mode on Mod4 + alt + c
clientkeys = awful.util.table.join(clientkeys,
 awful.key({ modkey,altkey }, "c", function(c)
	keygrabber_popup = naughty.notify({ position = "bottom_right", width = 550, height = 800, timeout = 0, title = "<big>Keygrabber</big>", text = "Client" })
	keygrabber.run(function(mod, key, event)
         if event == "release" then return true end
         naughty.destroy(keygrabber_popup)
         keygrabber.stop()
         if client_mode[key] then client_mode[key](c) end
         return true
     end)
 end)
)
