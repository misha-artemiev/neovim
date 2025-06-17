--     DO NOT CHANGE THIS FILE     
-- any config changed must be done in config_override.lua

-- mason must be enabled to download lsp servers
-- lspconfig must be enabled to activate lsp servers
-- language support
vim.g.lsp_c_cpp_objc_objcpp = false --  requires clangd for linux arm64
vim.g.lsp_python = false --  requires node
vim.g.lsp_go = false --  requires go 
vim.g.lsp_java = false
vim.g.lsp_cmake = false
vim.g.lsp_swift = false --  requires sourcekit
vim.g.lsp_zig = false
vim.g.lsp_bash = false
vim.g.lsp_lua = false
vim.g.lsp_assembly = false

-- plugins
vim.g.plugin_dashboard = false -- homepage
vim.g.plugin_which_key = false -- shortcut hints
vim.g.plugin_trouble = false -- pretty diagnostics list
vim.g.plugin_noice = false -- custom cli and notifications
vim.g.plugin_catppuccin = true -- theme
vim.g.plugin_nvim_tree = true -- explorer
vim.g.plugin_lazydev = false -- parser for neovim config
vim.g.plugin_gitsigns = false -- git signs in editor
vim.g.plugin_stay_centered = false -- center typing cursor
vim.g.plugin_fzf_lua = false -- file search, requires fzf
vim.g.plugin_lspconfig = false -- lsp servers integration
vim.g.plugin_mason = false -- downloads lsp servers
vim.g.plugin_blink_cmp = false -- autocompletion, display debugging info
vim.g.plugin_treesitter = false -- simple parser. tree-sitter binary suggested

-- editor config
vim.g.config_spacing = 4
vim.g.config_signcolumn = false -- always keep sign column
vim.g.config_numbers = true -- line numbers

-- default editor
vim.g.config_dafault = false

local config_path = vim.fn.stdpath("config")
if not ( os.rename(config_path .. "/lua/config/config_override.lua", config_path .. "/lua/config/config_override.lua") and true ) then
    local config_override = io.open(config_path .. "/lua/config/config_override.lua", "w")
    if config_override == nil then
        return
    end
    config_override:write("")
    config_override:close()
end
