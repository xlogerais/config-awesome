--stolen from http://www.markurashi.de/dotfiles/awesome/rc.lua
-- failsafe mode
-- if the current config fail, load the default rc.lua
local awful = require("awful")
local naughty = require("naughty")

confdir = awful.util.getdir("config")
local rc, err = loadfile(confdir .. "/awesome.lua");
if rc then
    rc, err = pcall(rc);
    if rc then
        return;
    end
end

dofile("/etc/xdg/awesome/rc.lua");
for s = 1,screen.count() do
    mypromptbox[s].text = awful.util.escape(err:match("[^\n]*"));
end

naughty.notify
{
		preset = naughty.config.presets.critical,
		title = "Oops, there were errors during startup!",
		text = "Awesome crashed during startup on " .. os.date("%d/%m/%Y %T :\n") ..  err .. "\n", timeout = 0,
}

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end
