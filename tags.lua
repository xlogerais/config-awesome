-- Defines the tags

tags = {
  names  = { "terms",    "web",       "mail",      "communication", "bureautique", "multimédia", "perso",     "autres"   },
  layout = { layouts[2], layouts[10], layouts[2], layouts[2],      layouts[12],   layouts[1],   layouts[10], layouts[1] }
}

-- Creates the tags
 for s = 1, screen.count() do
     tags[s] = awful.tag(tags.names, s, tags.layout)
 end

-- Customize "terms" tag
for s = 1, screen.count() do
    awful.tag.setnmaster(1,tags[s][1])
    awful.tag.setncol(1,tags[s][1])
    awful.tag.setmwfact(0.6,tags[s][1])
end

-- Customize "communication" tag
for s = 1, screen.count() do
    awful.tag.setnmaster (1, tags[s][4])
    awful.tag.setmwfact (0.25, tags[s][4])
end
--for s = 1, screen.count() do
--    -- Each screen has its own tag table.
--	tags[s] = awful.tag({ "➊", "➋", "➌", "➍", "➎", "➏", "➐", "➑", "➒"  }, s, layouts[1]) -- these are boring but I like them.  
--    --tags[s] = awful.tag({ "♨", "⌨", "⚡", "✉", "☕", "❁", "☃", "☄", "⚢" }, s, layouts[1])
--end
