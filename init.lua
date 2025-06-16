-- require "config.config_sync"
require "config.config_default"
if not vim.g.config_default then
    require "config.lazy"
    require "config.options"
end
