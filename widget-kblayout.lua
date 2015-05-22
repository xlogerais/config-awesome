-- Keyboard map indicator and changer
kbdcfg = {}
kbdcfg.cmd = "setxkbmap"
kbdcfg.layout = { "fr", "fr bepo" }
kbdcfg.current = 1  -- fr is our default layout
kbdcfg.widget = wibox.widget.textbox()

kbdcfg.switch = function ()
   kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
   local t = " " .. kbdcfg.layout[kbdcfg.current] .. " "
   kbdcfg.widget:set_text(t)
   awful.util.spawn(kbdcfg.cmd .. t )
end

-- Default text
kbdcfg.widget:set_text(" " .. kbdcfg.layout[kbdcfg.current] .. " ")

-- Mouse bindings
kbdcfg.widget:buttons(awful.util.table.join(
    awful.button({ }, 1, function () kbdcfg.switch() end)
))
