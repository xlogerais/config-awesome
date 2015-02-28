-- naughty settings

local naughty_settings =
{ screen = screen.count() ,
  position = "top_right",
  height = 48,
  width = 300,
  opacity = 0.75,
  timeout = 15,
  fg = beautiful.fg_normal or "#999999AA",
  bg = beautiful.bg_normal or "#000000AA",
  font = beautiful.font or "Verdana 8",
}

for k, v in pairs(naughty_settings) do
  naughty.config.presets.low[k] = v
  naughty.config.presets.normal[k] = v
  naughty.config.presets.critical[k] = v
end

naughty.config.presets.low["bg"]="#00FF0066"
naughty.config.presets.normal["bg"]="#6699FF66"
naughty.config.presets.critical["bg"]="#FF000066"

--local merge_tables = require 'awful.util'.table.join

--local naughty_defaults = {
--opacity = 0.75,
--rounded_corners = true,
--screen = preferred_screen,
--}

--naughty.config.presets.normal = merge_tables(naughty.config.presets.normal, naughty_defaults)
--naughty.config.presets.low = merge_tables(naughty.config.presets.low, naughty_defaults)
--naughty.config.presets.critical = merge_tables(naughty.config.presets.critical, naughty_defaults)
--naughty.config.opacity = naughty_defaults.opacity
--naughty.config.rounded_corners = naughty_defaults.rounded_corners
--naughty.config.screen = naughty_defaults.screen
--naughty.config.mapping = {
--{{urgency = '\0'}, naughty.config.presets.low},
--{{urgency = '\1'}, naughty.config.presets.normal},
--{{urgency = '\2'}, naughty.config.presets.critical}
--}
