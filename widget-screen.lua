-- Create a textbox widget for the screen util
myscreenbox = widget({ type = "textbox", align = "left" })
myscreenbox.text = "screens"
myscreenbox.fg = "#00FF00FF"
myscreenbox.bg = beautiful.bg_normal
myscreenbox_tooltip = awful.tooltip({ myscreenbox, timer_function = function() return io.popen("screen -ls") end, })


 function screenInfo()

     local f_screen_number = io.popen("screen -ls | egrep \"(Attached)|(Detached)\" | wc -l")
     local screen_number = tonumber(f_screen_number:read())

     local f_screen_attached = io.popen("screen -ls | grep \"(Attached)\" | wc -l")
     local screen_attached = tonumber(f_screen_attached:read())

     local f_screen_detached = io.popen("screen -ls | grep \"(Detached)\" | wc -l")
     local screen_detached = tonumber(f_screen_detached:read())

     local f_screen_wiped = io.popen("screen -ls | egrep \"(Wiped)\" | wc -l")
     local screen_wiped = tonumber(f_screen_wiped:read())

     myscreenbox.text = "screens [" .. "<span color=\"green\">" .. screen_attached .. "</span>" .. "/" .. "<span color=\"orange\">" .. screen_detached .. "</span>" .. "]"

 end


-- Timer --
awful.hooks.timer.register(10, function() screenInfo() end)
