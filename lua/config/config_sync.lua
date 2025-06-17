local default_config_file = io.open("config_default.lua", "r")
local config_file = io.open("config.lua", "r+")

if not default_config_file then
    return
end

for config_line in default_config_file:lines() do
    local strip_line = config_line:match("([^=]+)")
end
