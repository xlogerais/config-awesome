-- naughty settings

local naughty_settings =
{ screen = screen.count() ,
  position = "bottom_right",
  timeout = 15,
  height = 50,
  width = 500,
  font = beautiful.font or "DejaVu Sans 16",
  fg = beautiful.fg_normal or "#999999AA",
  bg = beautiful.bg_normal or "#000000AA",
}

for k, v in pairs(naughty_settings) do
  naughty.config.presets.low[k] = v
  naughty.config.presets.normal[k] = v
  naughty.config.presets.critical[k] = v
end

naughty.config.presets.critical["bg"]="#FF000066"
naughty.config.presets.low["bg"]="#00FF0066"
