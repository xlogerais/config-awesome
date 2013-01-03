-- Standard lua library
--require("socket")

-- Standard awesome library
require("awful")
require("awful.rules")
require("awful.autofocus")
require("awful.remote")
require("awful.tooltip")
-- 
-- Theme handling library
require("beautiful")
require("beautiful-settings")
--
-- Notification library
require("naughty")
require("naughty-settings")

-- Revelation library
require("revelation")

-- Default modkey.
altkey = "Mod1"
modkey = "Mod4"

-- Default locale
os.setlocale("fr_FR.utf8")

-- Define if we want to use titlebar on all applications.
use_titlebar = false

-- Layouts
require("layouts")

-- Tags
require("tags")

-- Definition des applications preferees
require("apps")

--- Definition des menus
require("menus")

-- Dropdown terminal
require("teardrop")

-- Widgets
require("widget-layoutbox")
require("widget-taglist")
require("widget-tasklist")
require("widget-promptbox")
require("widget-menulauncher")
require("widget-systray")
require("widget-spacer")
require("widget-clock")
--require("widget-battery")
--require("widget-todo")
--require("widget-remind")
require("widget-screen")
require("widget-kblayout")

-- Wibox

require("statusbar-top")
require("statusbar-bottom")
require("statusbar-left")

-- }}}

-- {{{ Mouse bindings
require("mouse-bindings-client")
require("mouse-bindings-global")
-- }}}

-- {{{ Key bindings

   -- Global
       -- Add keybindings to table
         require("key-bindings-global")
         require("key-bindings-tags")
         require("key-bindings-prompts")
         require("key-bindings-utils")
         require("key-bindings-multimedia")
         require("test-modal-keybinding")
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
