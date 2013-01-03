
-- Create a textbox widget
my_remind_widget = widget({ type = "textbox", align = "left" })
my_remind_widget.text = "Agenda"
my_remind_widget.fg = beautiful.fg_normal

-- Create functions to display the popup
    local remind_list = nil

    function show_remind_list()
        local list_today = awful.util.pread("/home/xlogerais/software/remind/bin/remind -g -b1 /home/xlogerais/.reminders | tail -n +3 | grep -v \"^$\"")
        local list_upcoming = awful.util.pread("/home/xlogerais/software/remind/bin/remind -n -b1 /home/xlogerais/.reminders | sort")

        remove_remind_list()
        remind_list = naughty.notify({
            position = "bottom_right",
            width = 400,
            height = 300,
            timeout = 0,
            hover_timeout = 0.5,
            title = "<big>Agenda</big>",
            text = "<br>".."<b>Aujourd'hui</b><br><br><i>"..list_today.."</i><br><b>A venir</b><br><br><i>"..list_upcoming.."</i>",
        })

    end

    function remove_remind_list()
        if remind_list ~= nil then
            naughty.destroy(remind_list)
            remind_list = nil
        end
    end

-- Add signals to widget
    my_remind_widget:add_signal("mouse::enter", show_remind_list)
    my_remind_widget:add_signal("mouse::leave", remove_remind_list)
