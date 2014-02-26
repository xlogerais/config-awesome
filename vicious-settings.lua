--
-- Text widgets
--

-- Initialize widget
datewidget = wibox.widget.textbox()
-- Register widget
vicious.register(datewidget, vicious.widgets.date, "%b %d, %R", 60)

-- Initialize widget
cpuwidget = wibox.widget.textbox()
-- Register widget
vicious.register(cpuwidget, vicious.widgets.cpu, "Processeur : $1%")

-- Initialize widget
memwidget = wibox.widget.textbox()
-- Register widget
vicious.register(memwidget, vicious.widgets.mem, "Mémoire : $1% ($2MB/$3MB)", 13)

--
-- Graph widgets
--

-- Initialize widget
cpugraphwidget = awful.widget.graph()
-- Graph properties
cpugraphwidget:set_width(50)
cpugraphwidget:set_background_color("#494B4F")
cpugraphwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#FF5656"}, {0.5, "#88A175"}, {1, "#AECF96" }}})
-- Register widget
vicious.register(cpugraphwidget, vicious.widgets.cpu, "$1")

-- Initialize widget
memgraphwidget = awful.widget.progressbar()
-- Progressbar properties
memgraphwidget:set_width(8)
memgraphwidget:set_height(10)
memgraphwidget:set_vertical(true)
memgraphwidget:set_background_color("#494B4F")
memgraphwidget:set_border_color(nil)
memgraphwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#AECF96"}, {0.5, "#88A175"}, {1, "#FF5656"}}})
-- Register widget
vicious.register(memgraphwidget, vicious.widgets.mem, "$1", 13)
