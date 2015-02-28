-- load theme
beautiful.init(awful.util.getdir("config") .. "/theme.lua")
awful.util.spawn("feh --bg-fill " .. theme.wallpaper)
