-- Create an imagebox widget which will contains an icon indicating which layout we're using.
-- We need one layoutbox per screen.
mylayoutbox = {}
for s = 1, screen.count() do
mylayoutbox[s] = awful.widget.layoutbox(s)
mylayoutbox[s]:buttons(awful.util.table.join(
                       awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
                       awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
                       awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
                       awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
end
