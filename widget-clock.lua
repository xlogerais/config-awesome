-- Create a textbox widget for the clock
myclockbox = awful.widget.textclock({ align = "right"  }, "<b> %A %d %B %H:%M </b>", 10)

myclockbox:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn("gsimplecal") end),
  awful.button({ }, 3, function () awful.util.spawn("gsimplecal") end)
))
