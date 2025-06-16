require "config.config"
if not vim.g.config_default then
    require "config.lazy"
    require "config.options"
end
