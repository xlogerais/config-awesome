-------------------------------
--  "Carbon" awesome theme  --
--    By Xavier L. (xman)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.path = awful.util.getdir("config") .. "/themes/new/carbon"
theme.wallpaper = theme.path .. "/background.png"
-- }}}

-- {{{ Styles
theme.font      = "DejaVu Sans 16"

-- {{{ Colors
theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 1
theme.border_normal = "#AAAAAA"
theme.border_focus  = "#FFFFFF"
theme.border_marked = "#91231c"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#3F3F3FFF"
theme.titlebar_bg_normal = "#3F3F3F66"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#000000"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 24
theme.menu_width  = 300
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = theme.path .. "/taglist/squarefz.png"
theme.taglist_squares_unsel = theme.path .. "/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = theme.path .. "/awesome-icon.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme.path .. "/layouts/tile.png"
theme.layout_tileleft   = theme.path .. "/layouts/tileleft.png"
theme.layout_tilebottom = theme.path .. "/layouts/tilebottom.png"
theme.layout_tiletop    = theme.path .. "/layouts/tiletop.png"
theme.layout_fairv      = theme.path .. "/layouts/fairv.png"
theme.layout_fairh      = theme.path .. "/layouts/fairh.png"
theme.layout_spiral     = theme.path .. "/layouts/spiral.png"
theme.layout_dwindle    = theme.path .. "/layouts/dwindle.png"
theme.layout_max        = theme.path .. "/layouts/max.png"
theme.layout_fullscreen = theme.path .. "/layouts/fullscreen.png"
theme.layout_magnifier  = theme.path .. "/layouts/magnifier.png"
theme.layout_floating   = theme.path .. "/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = theme.path .. "/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.path .. "/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = theme.path .. "/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.path .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.path .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.path .. "/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = theme.path .. "/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.path .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.path .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.path .. "/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = theme.path .. "/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.path .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.path .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.path .. "/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = theme.path .. "/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.path .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.path .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.path .. "/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
