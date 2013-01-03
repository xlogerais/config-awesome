-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

-- Define azerty num keys
local azerty_numkeys = { "ampersand", "eacute", "quotedbl", "apostrophe", "parenleft", "minus", "egrave", "underscore", "ccedilla", "agrave", "parenright", "equal" }
local azerty_keys = {}

for i = 1, keynumber do
    azerty_keys = awful.util.table.join(azerty_keys,
        awful.key({ modkey }, azerty_numkeys[i],
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, azerty_numkeys[i],
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          tags[screen][i].selected = not tags[screen][i].selected
                      end
                  end),
        awful.key({ modkey, "Shift" }, azerty_numkeys[i],
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, azerty_numkeys[i],
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "F" .. i,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          for k, c in pairs(awful.client.getmarked()) do
                              awful.client.movetotag(tags[screen][i], c)
                          end
                      end
                   end)
    )
end

-- Define bepo num keys

local bepo_numkeys = { "quotedbl", "guillemotleft", "guillemotright", "parenleft", "parenright", "at", "plus", "minus", "slash", "asterisk", "equal", "percent" }
local bepo_keys = {}

for i = 1, keynumber do
    bepo_keys = awful.util.table.join(bepo_keys,
        awful.key({ modkey }, bepo_numkeys[i],
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Control" }, bepo_numkeys[i],
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          tags[screen][i].selected = not tags[screen][i].selected
                      end
                  end),
        awful.key({ modkey, "Shift" }, bepo_numkeys[i],
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Control", "Shift" }, bepo_numkeys[i],
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.toggletag(tags[client.focus.screen][i])
                      end
                  end),
        awful.key({ modkey, "Shift" }, "F" .. i,
                  function ()
                      local screen = mouse.screen
                      if tags[screen][i] then
                          for k, c in pairs(awful.client.getmarked()) do
                              awful.client.movetotag(tags[screen][i], c)
                          end
                      end
                   end)
    )
end

-- join computed keys to globalkeys
globalkeys = awful.util.table.join(globalkeys,azerty_keys)
--globalkeys = awful.util.table.join(globalkeys,bepo_keys)

-- Move beetween tags
globalkeys = awful.util.table.join(globalkeys,
	awful.key({ modkey,            }, "Prior" , awful.tag.viewprev       ),
	awful.key({ modkey,            }, "Next"  , awful.tag.viewnext       ),
	awful.key({ modkey, "Control"  }, "Left",   awful.tag.viewprev       ),
	awful.key({ modkey, "Control"  }, "Right",  awful.tag.viewnext       ),
	awful.key({ modkey,            }, "Escape", awful.tag.history.restore)
    )
