globalkeys = awful.util.table.join(globalkeys,
    -- Prompts
    awful.key({ modkey }, "r",
              function ()
                  mypromptbox:run()
              end),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "<b> Run Lua code: </b>" },
                  mypromptbox.widget,
                  awful.util.eval,
                  nil, awful.util.getdir("cache") .. "/history_eval")
              end),

    awful.key({ modkey }, "s",
              function ()
                  awful.prompt.run({ prompt = '<b> SSH : </b>' },
                  mypromptbox.widget,
                  function (host) awful.util.spawn(terminal .. " -e ssh " .. host) end,
                  nil, awful.util.getdir("cache") .. "/history_ssh" )
              end),

    awful.key({ modkey }, "w",
              function ()
                  awful.prompt.run({ prompt = '<b> URL : </b>' },
                  mypromptbox.widget,
                  function (url) awful.util.spawn(browser .. url) end,
                  nil, awful.util.getdir("cache") .. "/history_browser")
              end),
    awful.key({ modkey }, "a",
              function ()
                  awful.prompt.run({ prompt = '<b> Chercher dans l\'annuaire : </b>' },
                  mypromptbox.widget,
                  function (name)
                     local f = io.popen("annuaire " .. name .. " 2>&1")
                     local fr = ""
                     for line in f:lines() do
                     fr = fr .. line .. '\n'
                     end
                     f:close()
                     naughty.notify({ text = '<span font_desc="Sans 8">'..fr..'</span>', timeout = 0 })
                  end,
                  nil, awful.util.getdir("cache") .. "/history_annuaire")
              end),

    awful.key({ modkey }, "d",
              function ()
                  awful.prompt.run({ prompt = '<b> Chercher dans le dictionnaire : </b>' },
                  mypromptbox.widget,
                  function (word)
                     local f = io.popen("dict " .. word .. " 2>&1")
                     local fr = ""
                     for line in f:lines() do
                     fr = fr .. line .. '\n'
                     end
                     f:close()
                     naughty.notify({ text = '<span font_desc="Sans 8">'..fr..'</span>', timeout = 0, width = 400 , height = 75 })
                  end,
                  nil, awful.util.getdir("cache") .. "/history_dict")
              end)
)
