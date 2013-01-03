-- Custom
mytodofile = os.getenv("HOME") .. "/.todo"

-- Create a textbox widget for the todolist
mytodobox = widget({ type = "textbox", align = "left" })
mytodobox.text = "Tâches"
mytodobox.fg = beautiful.fg_normal

-- Create functions to display the todo list
    local todolist = nil

    function add_todolist()
        local flist = io.open(mytodofile)
        local list = flist:read('*a')

        list = string.gsub(list, '(%s-)!%s(.-)\n',  '%1 &#8226; <span color="orange"><i>%2</i></span>\n')
        list = string.gsub(list, '(%s-)%*%s(.-)\n', '%1 &#8226; <span color="green"><i>%2</i></span>\n')
        list = string.gsub(list, '(%s-)%-%s(.-)\n', '%1 &#8226; <span color="black"><i>%2</i></span>\n')
        list = string.gsub(list, '(%s-)%#%s(.-)\n', '%1 &#8226; <span color="gray" strikethrough="true"><i>%2</i></span>\n')

        remove_todolist()
        todolist = naughty.notify({
            position = "bottom_right",
            width = 550,
            height = 800,
            timeout = 0,
            hover_timeout = 0.5,
            title = "<big>Tâches</big>",
            text = "<br>"..list,
        })

    end

    function remove_todolist()
        if todolist ~= nil then
            naughty.destroy(todolist)
            todolist = nil
            offset = 0
        end
    end

-- Add signals to widget
    mytodobox:add_signal("mouse::enter", add_todolist)
    mytodobox:add_signal("mouse::leave", remove_todolist)
    mytodobox:buttons(awful.util.table.join(awful.button({ }, 1, function()
                                                                   remove_todolist()
                                                                   awful.util.spawn(editor .. mytodofile)
                                                                 end)))
