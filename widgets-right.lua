-- Define a color gradient for widget
horizontal_gradient_green_to_red = { type = "linear", from = {0,0}, to = {64,0}, stops = {{0,"#00FF00"},{0.8,"FFD900"},{1,"#FF0000"}} }

--
-- Text widgets
--

-- Initialize widgets
right_cpu_text_label = wibox.widget.textbox("Processeur")
right_mem_text_label = wibox.widget.textbox("Mémoire")
right_vol_text_label = wibox.widget.textbox("Volume")
right_bat_text_label = wibox.widget.textbox("Batterie")

right_cpu_text_widget  = wibox.widget.textbox()
right_mem_text_widget  = wibox.widget.textbox()
right_vol_text_widget  = wibox.widget.textbox()
right_bat_text_widget  = wibox.widget.textbox()

-- Register widgets
vicious.register(right_cpu_text_widget,  vicious.widgets.cpu,    " $1% " , 2)
vicious.register(right_mem_text_widget,  vicious.widgets.mem,    " $1% ($2MB/$3MB) ", 2)
vicious.register(right_vol_text_widget,  vicious.widgets.volume, " $1% ", 2 , "Master")
vicious.register(right_bat_text_widget,  vicious.widgets.bat,    " $2% ($3 restant) [$1] [$4] ", 2 , "BAT0")

--
-- Progressbar widgets
--

-- Initialize widgets
right_cpu_progressbar_widget = awful.widget.progressbar()
right_mem_progressbar_widget = awful.widget.progressbar()
right_vol_progressbar_widget = awful.widget.progressbar()
right_bat_progressbar_widget = awful.widget.progressbar()

right_cpu_progressbar_widget:set_width(64)
right_cpu_progressbar_widget:set_border_color(beautiful.border_normal)
right_cpu_progressbar_widget:set_background_color(beautiful.bg_normal)
right_cpu_progressbar_widget:set_color(horizontal_gradient_green_to_red)

right_mem_progressbar_widget:set_width(64)
right_mem_progressbar_widget:set_border_color(beautiful.border_normal)
right_mem_progressbar_widget:set_background_color(beautiful.bg_normal)
right_mem_progressbar_widget:set_color(horizontal_gradient_green_to_red)

right_vol_progressbar_widget:set_width(64)
right_vol_progressbar_widget:set_border_color(beautiful.border_normal)
right_vol_progressbar_widget:set_background_color(beautiful.bg_normal)
right_vol_progressbar_widget:set_color(horizontal_gradient_green_to_red)

right_bat_progressbar_widget:set_width(64)
right_bat_progressbar_widget:set_border_color(beautiful.border_normal)
right_bat_progressbar_widget:set_background_color(beautiful.bg_normal)
right_bat_progressbar_widget:set_color(horizontal_gradient_green_to_red)

--
-- Graph widgets
--

right_cpu_graph_widget = awful.widget.graph()
right_cpu_graph_widget:set_width(64)
right_cpu_graph_widget:set_height(32)
right_cpu_graph_widget:set_border_color(beautiful.border_normal)
right_cpu_graph_widget:set_background_color(beautiful.bg_normal)
right_cpu_graph_widget:set_color(horizontal_gradient_green_to_red)

right_mem_graph_widget = awful.widget.graph()
right_mem_graph_widget:set_width(50)
right_mem_graph_widget:set_height(32)
right_mem_graph_widget:set_border_color(beautiful.border_normal)
right_mem_graph_widget:set_background_color(beautiful.bg_normal)
right_mem_graph_widget:set_color(horizontal_gradient_green_to_red)

-- Register widgets
vicious.register(right_cpu_progressbar_widget, vicious.widgets.cpu,    "$1" , 1 )
vicious.register(right_mem_progressbar_widget, vicious.widgets.mem,    "$1" , 1 )
vicious.register(right_vol_progressbar_widget, vicious.widgets.volume, "$1" , 2 , "Master")
vicious.register(right_bat_progressbar_widget, vicious.widgets.bat,    "$2" , 5, "BAT0")

vicious.register(right_cpu_graph_widget, vicious.widgets.cpu, "$1", 1)
vicious.register(right_mem_graph_widget, vicious.widgets.mem, "$1", 1)

