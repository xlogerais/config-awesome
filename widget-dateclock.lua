-- Create a textbox widget for the clock
dateclock_widget = awful.widget.textclock("<b> %A %d %B %H:%M </b>", 10)

dateclock_tooltip = awful.tooltip({objects = {dateclock_widget}})
dateclock_tooltip:set_text(io.popen("cal"):read('*a'))
dateclock_tooltip.textbox:set_font("mono")

dateclock_widget:buttons(awful.util.table.join(
  awful.button({ }, 1, function () awful.util.spawn(calendar) end),
  awful.button({ }, 3, function () awful.util.spawn(calendar) end)
))
