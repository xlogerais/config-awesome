-- Definition des tags

tags={}
tags.settings = {
    { name = "terms",         layout = layouts[4]  },
    { name = "web",           layout = layouts[10] },
    { name = "mail",          layout = layouts[10] },
    { name = "communication", layout = layouts[2]  },
    { name = "bureautique",   layout = layouts[12] },
    { name = "multimédia",    layout = layouts[1]  },
    { name = "perso",         layout = layouts[10]  },
    { name = "autres",        layout = layouts[1]  },
}

for s = 1, screen.count() do
    tags[s] = {}
    for i, v in ipairs(tags.settings) do
        tags[s][i] = tag({ name = v.name })
        tags[s][i].screen = s
        awful.tag.setproperty(tags[s][i], "layout", v.layout)
    end
    tags[s][1].selected = true
end

-- Customize "terms" tag
for s = 1, screen.count() do
    awful.tag.setnmaster (1, tags[s][1])
    awful.tag.setncol(2, tags[s][1])
    awful.tag.setmwfact (0.5, tags[s][1])
end

-- Customize "communication" tag
for s = 1, screen.count() do
    awful.tag.setnmaster (1, tags[s][4])
    awful.tag.setmwfact (0.25, tags[s][4])
end

