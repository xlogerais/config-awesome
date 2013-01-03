-- Define a host to monitor
myhost = "82.239.210.90"
myport = "22"

-- Create a textbox widget for the host to monitor 
widgethomestation = widget({ type = "textbox", align = "left" })

-- Configure the widget
widgethomestation.text = myhost

-- Define the monitor function
function hostMonitor(host, port)
  local ret, err = socket.tcp(host, port)
  if ret
  then
     widgethomestation.text = "<span foreground='green'>" .. host .. "</span>"
  else
     widgethomestation.text = "<span foreground='red'>" .. host .. "</span>"
  end
end

-- Define the timer
awful.hooks.timer.register(10, function()
     hostMonitor(myhost,myport)
 end)
