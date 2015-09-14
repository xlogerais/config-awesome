--
-- Create functions to manage a todo list
--

function todo_list_parse(file)
  local flist = io.open(file)
  local list = flist:read('*a')

  list = string.gsub(list, '(%s-)%*%s(.-)\n', '%1 &#8226; <span color="black"><i>%2</i></span>\n')
  list = string.gsub(list, '(%s-)%-%s(.-)\n', '%1 &#8226; <span color="black"><i>%2</i></span>\n')
  list = string.gsub(list, '(%s-)!%s(.-)\n',  '%1 &#8226; <span color="orange"><i>%2</i></span>\n')
  list = string.gsub(list, '(%s-)%#%s(.-)\n', '%1 &#8226; <span color="gray" strikethrough="true"><i>%2</i></span>\n')
  return list
end

function todo_list_display(title,list,popup)

  popup = naughty.notify({
    --position = "top_left",
    --width = 550,
    --height = 800,
    bg = '#FFFFFF',
    fg = '#000000',
    opacity = 1,
    timeout = 0,
    hover_timeout = 1,
    screen = mouse.screen,
    title = title,
    text = "<br>"..list,
  })

  return popup
end

function hide_todo_list(popup)
  if popup ~= nil then
    naughty.destroy(popup)
    popup = nil
  end
end

function todo_list_edit(file)
  hide_todo_list()
  awful.util.spawn(editor .. file)
end

function todo_list_widget(name,file)

  local title = name
  local list = todo_list_parse(file)

  -- Create a textbox widget for the todolist
  local widget = wibox.widget.textbox(title)
  -- Add a tooltip
  --widget_tooltip = awful.tooltip({objects = {widget}})
  --widget_tooltip:set_text(title)

  -- Add signals to widget
  widget:connect_signal("mouse::enter", function()
    list = todo_list_parse(file)
    popup = todo_list_display(title,list)
  end)

  widget:connect_signal("mouse::leave", function()
    hide_todo_list(popup)
  end)

  widget:buttons(awful.util.table.join(
    awful.button({ }, 1,
      function()
        hide_todo_list(popup)
        todo_list_edit(file)
      end
    )
  ))

  return widget,popup

end

--
-- Widgets
--
notes_widget,notes_popup = todo_list_widget("Notes", os.getenv("HOME") .. "/.notes")
todo_widget,todo_popup   = todo_list_widget("Tâches", os.getenv("HOME") .. "/.todo")
