-- Errors
require("naughty").connect_signal("request::display_error", function(message, startup)
    require("naughty").notification {
        urgency = "critical",
        title   = "Error "..(startup and " during startup!" or "!"),
        message = message
    }
end)

-- Defaults
terminal = "termite"
browser = "microsoft-edge-stable"
files = "thunar"
editor = "vscodium"
editor_cmd = terminal .. " -e " .. editor
shutdown = "systemctl poweroff"
reboot = "systemctl reboot"
sleep = "systemctl suspend"
modkey = "Mod4"

-- Config
require("awful.autofocus")
require("signals")
require("themes.linear")
require("config")
