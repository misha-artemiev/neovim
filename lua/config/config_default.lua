-- mason must be enabled to download lsp servers
-- lspconfig must be enabled to activate lsp servers
-- languages
vim.g.lsp_c_cpp_objc_objcpp = false --  requires clangd for linux arm64
vim.g.lsp_python = false --  requires node
vim.g.lsp_go = false --  requires go 
vim.g.lsp_java = false
vim.g.lsp_cmake = false
vim.g.lsp_swift = false --  requires sourcekit
vim.g.lsp_zig = false
vim.g.lsp_bash = false
vim.g.lsp_lua = true
vim.g.lsp_assembly = false

-- plugins
vim.g.plugin_dashboard = true -- homepage
vim.g.plugin_which_key = true -- shortcut hints
vim.g.plugin_trouble = true -- pretty diagnostics list
vim.g.plugin_noice = true -- custom cli and notifications
vim.g.plugin_catppuccin = true -- theme
vim.g.plugin_nvim_tree = true -- explorer
vim.g.plugin_lazydev = true -- parser for neovim config
vim.g.plugin_gitsigns = true -- git signs in editor
vim.g.plugin_stay_centered = true -- center typing cursor
vim.g.plugin_telescope = true -- file search 
vim.g.plugin_lspconfig = true -- lsp servers integration
vim.g.plugin_mason = true -- downloads lsp servers
vim.g.plugin_blink_cmp = true -- autocompletion 
vim.g.plugin_treesitter = true -- simple parser

-- editor config
vim.g.config_spacing = 4
vim.g.config_numbers = true -- line numbers

-- default editor
vim.g.config_dafault = false
