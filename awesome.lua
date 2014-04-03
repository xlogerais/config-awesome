-- Standard lua library
--require("socket")

-- Widget and layout library
wibox = require("wibox")

-- Standard awesome library
awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
require("awful.remote")
--require("awful.tooltip")

-- Theme handling library
beautiful = require("beautiful")
require("beautiful-settings")

-- Notification library
naughty = require("naughty")
--require("naughty-settings")

gears = require("gears")

menubar = require('menubar')

-- Default modkey.
altkey = "Mod1"
modkey = "Mod4"
menukey = "Menu"

-- Default locale
os.setlocale("fr_FR.utf8")

-- Define if we want to use titlebar on all applications.
--use_titlebar = true
titlebars_enabled=true

-- Layouts
require("layouts")

-- Tags
require("tags")

-- Apps
require("apps")

-- Menus
require("menus")

-- Vicious widgets
vicious = require("vicious")
require("vicious-settings")

-- Custom widgets
require("widget-layoutbox")
require("widget-taglist")
require("widget-tasklist")
require("widget-promptbox")
require("widget-menulauncher")
require("widget-systray")
require("widget-spacer")
require("widget-clock")
require("widget-battery")
--require("widget-todo")
--require("widget-remind")
--require("widget-screen")
--require("widget-kblayout")

-- Wibox

require("wibox-top")
require("wibox-bottom")
--require("wibox-left")


-- {{{ Mouse bindings

   -- Global
        require("mouse-bindings-global")

   -- Clients
        require("mouse-bindings-client")

-- }}}

-- {{{ Key bindings

   -- Global
       -- Add keybindings to table
        require("key-bindings-global")
        require("key-bindings-tags")
        require("key-bindings-prompts")
        require("key-bindings-utils")
        require("key-bindings-multimedia")
        require("key-bindings-modal")
       -- Bind the keys
        root.keys(globalkeys)

   -- Clients
        require("key-bindings-client")

-- }}}

-- {{{ Rules

require("rules")

-- }}}

-- {{{ Signals

require("signals")

-- }}}

-- Dropdown terminal
require("teardrop")

-- Revelation
require("revelation")

