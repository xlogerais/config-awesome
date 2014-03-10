--
-- Text widgets
--

-- date textbox widget
datewidget = wibox.widget.textbox()
--vicious.register(datewidget, vicious.widgets.date, "%b %d, %R", 11 )

-- cpu textbox widget
cpuwidget = wibox.widget.textbox()
vicious.register(cpuwidget, vicious.widgets.cpu, " Processeur : $1% " , 12 )

-- mem textbox widget
memwidget = wibox.widget.textbox()
vicious.register(memwidget, vicious.widgets.mem, " Mémoire : $1% ($2MB/$3MB) ", 13)

-- bat textbox widget
batwidget = wibox.widget.textbox()
vicious.register(batwidget, vicious.widgets.bat, " Batterie : $1 / $2% / $3 restant ", 14 , "BAT0" )

--
-- Gauge widgets
--

-- cpu bar
cpubarwidget = awful.widget.progressbar()
cpubarwidget:set_width(10)
cpubarwidget:set_height(10)
cpubarwidget:set_vertical(true)
cpubarwidget:set_background_color("#494B4F")
cpubarwidget:set_border_color(nil)
cpubarwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#AECF96"}, {0.5, "#88A175"}, {1, "#FF5656"}}})
vicious.register(cpubarwidget, vicious.widgets.cpu, "$1", 12)

-- mem bar
membarwidget = awful.widget.progressbar()
membarwidget:set_width(10)
membarwidget:set_height(10)
membarwidget:set_vertical(true)
membarwidget:set_background_color("#494B4F")
membarwidget:set_border_color(nil)
membarwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#AECF96"}, {0.5, "#88A175"}, {1, "#FF5656"}}})
vicious.register(membarwidget, vicious.widgets.mem, "$1", 13)

-- bat bar
batbarwidget = awful.widget.progressbar()
batbarwidget:set_width(10)
batbarwidget:set_height(10)
batbarwidget:set_vertical(true)
batbarwidget:set_background_color("#494B4F")
batbarwidget:set_border_color(nil)
batbarwidget:set_color({ type = "linear", from = { 0, 0 }, to = { 10,0 }, stops = { {0, "#AECF96"}, {0.5, "#88A175"}, {1, "#FF5656"}}})
vicious.register(batbarwidget, vicious.widgets.bat, "$2" , 14 , "BAT0" )

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
--vicious.register(cpugraphwidget, vicious.widgets.cpu, "$1")

