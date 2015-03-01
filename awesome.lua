--
-- Standard lua libraries

--require("socket")

--
-- Standard awesome libraries
--

gears = require("gears")

awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
require("awful.tooltip")
require("awful.remote")

-- Widget and layout library
wibox = require("wibox")

-- Theme handling library
beautiful = require("beautiful")
require("settings-beautiful")

-- Notification library
naughty = require("naughty")
require("settings-naughty")

--
-- Other libraries from community
--

-- Vicious
vicious = require("vicious")

-- Dropdown terminal
teardrop = require("teardrop")

-- Default modkey.
altkey = "Mod1"
modkey = "Mod4"

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

-- Widgets
require("widget-layoutbox")
require("widget-taglist")
require("widget-tasklist")
require("widget-dateclock")

require("widget-menulauncher")
require("widget-promptbox")
require("widget-spacer")
require("widget-systray")

--require("widget-battery")
require("widget-todo")
--require("widget-remind")
--require("widget-screen")
--require("widget-kblayout")

-- Wibox

require("wibox-top")
require("wibox-bottom")
--require("wibox-left")
--require("wibox-right")

-- }}}


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

-- Revelation library
revelation = require("revelation")
