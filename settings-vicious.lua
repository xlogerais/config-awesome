--
-- Text widgets
--

-- Initialize widgets
date_text_widget = wibox.widget.textbox()
cpu_text_widget  = wibox.widget.textbox()
mem_text_widget  = wibox.widget.textbox()
vol_text_widget  = wibox.widget.textbox()

-- Register widgets
vicious.register(date_text_widget, vicious.widgets.date, " %b %d, %R ", 30)
vicious.register(cpu_text_widget,  vicious.widgets.cpu,  " Processeur : $1% " , 2)
vicious.register(mem_text_widget,  vicious.widgets.mem,  " Mémoire : $1% ($2MB/$3MB) ", 2)
vicious.register(vol_text_widget,  vicious.widgets.volume,  " Volume : $1% ", 2 , "PCM")

--
-- Graph widgets
--

-- Define a color gradient for widget
vertical_gradient_green_to_red = { type = "linear", from = {0,32}, to = {0,0}, stops = {{0,"#00FF00"},{0.8,"FFD900"},{1,"#FF0000"}} }

-- Initialize widgets
cpu_progressbar_widget = awful.widget.progressbar()
mem_progressbar_widget = awful.widget.progressbar()
vol_progressbar_widget = awful.widget.progressbar()
bat_progressbar_widget = awful.widget.progressbar()

cpu_progressbar_widget:set_width(8)
--cpu_progressbar_widget:set_height(8)
cpu_progressbar_widget:set_vertical(true)
cpu_progressbar_widget:set_border_color(beautiful.border_normal)
cpu_progressbar_widget:set_background_color(beautiful.bg_normal)
cpu_progressbar_widget:set_color(vertical_gradient_green_to_red)

mem_progressbar_widget:set_width(8)
--mem_progressbar_widget:set_height(8)
mem_progressbar_widget:set_vertical(true)
mem_progressbar_widget:set_border_color(beautiful.border_normal)
mem_progressbar_widget:set_background_color(beautiful.bg_normal)
mem_progressbar_widget:set_color(vertical_gradient_green_to_red)

vol_progressbar_widget:set_width(8)
--vol_progressbar_widget:set_height(8)
vol_progressbar_widget:set_vertical(true)
vol_progressbar_widget:set_border_color(beautiful.border_normal)
vol_progressbar_widget:set_background_color(beautiful.bg_normal)
vol_progressbar_widget:set_color(vertical_gradient_green_to_red)

bat_progressbar_widget:set_width(8)
bat_progressbar_widget:set_height(8)
bat_progressbar_widget:set_vertical(true)
bat_progressbar_widget:set_border_color(beautiful.border_normal)
bat_progressbar_widget:set_background_color(beautiful.bg_normal)
bat_progressbar_widget:set_color(vertical_gradient_green_to_red)

cpu_graph_widget = awful.widget.graph()
cpu_graph_widget:set_width(50)
cpu_graph_widget:set_border_color(beautiful.border_normal)
cpu_graph_widget:set_background_color(beautiful.bg_normal)
cpu_graph_widget:set_color(vertical_gradient_green_to_red)

mem_graph_widget = awful.widget.graph()
mem_graph_widget:set_width(50)
mem_graph_widget:set_border_color(beautiful.border_normal)
mem_graph_widget:set_background_color(beautiful.bg_normal)
mem_graph_widget:set_color(vertical_gradient_green_to_red)

-- Register widgets
vicious.register(cpu_progressbar_widget, vicious.widgets.cpu,    "$1" , 1 )
vicious.register(mem_progressbar_widget, vicious.widgets.mem,    "$1" , 1 )
vicious.register(vol_progressbar_widget, vicious.widgets.volume, "$1" , 2 , "PCM")
vicious.register(bat_progressbar_widget, vicious.widgets.bat,    "$1" , 30, "BAT0")

vicious.register(cpu_graph_widget, vicious.widgets.cpu, "$1", 1)
vicious.register(mem_graph_widget, vicious.widgets.mem, "$1", 1)

