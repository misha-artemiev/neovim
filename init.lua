vim.o.signcolumn = "yes"
vim.opt.number = true
vim.opt.laststatus = 3
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.diagnostic.config {
    update_in_insert = true,
}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "

vim.pack.add {
    { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/saghen/blink.lib" },
    { src = "https://github.com/saghen/blink.cmp" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/folke/noice.nvim" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/echasnovski/mini.notify" },
    { src = "https://github.com/stevearc/oil.nvim" },
    { src = "https://github.com/folke/which-key.nvim" },
    { src = "https://github.com/xiyaowong/transparent.nvim" },
    { src = "https://github.com/folke/lazydev.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/arnamak/stay-centered.nvim" },
    { src = "https://github.com/mfussenegger/nvim-dap" },
    { src = "https://github.com/igorlfs/nvim-dap-view" },
    { src = "https://github.com/ibhagwan/fzf-lua" },
}

require("catppuccin").setup({
    flavour = "mocha",
})
vim.cmd.colorscheme("catppuccin")

require("gitsigns").setup({})

require("nvim-treesitter").setup {
    ensure_installed = {
        "python",
	    "lua",
        "yaml",
        "dockerfile",
        "swift",
        "just",
        "markdown",
        "make",
    },
    auto_install = false,
    sync_install = false,
    ignore_install = {},
    highlight = { enable = true },
    indent = { enable = true },
    modules = {},
}

local cmp = require('blink.cmp')
cmp.build():pwait()
cmp.setup({
    keymap = { preset = "default" },
    appearance = {
        nerd_font_variant = "mono",
    },
    sources = {
        default = {"lsp", "path", "snippets", "buffer"},
        providers = {},
    },
    completion = {
        list = { selection = { preselect = false, auto_insert = false } },
        documentation = { auto_show = false },
        ghost_text = { enabled = true },
        menu = {
	    auto_show = true,
	    draw = {
	        columns = {
		    { "label", "label_description", gap = 1 },
		    { "kind_icon", "kind" },
	        },
	    }
        },
    },
    signature = { enabled = true },
})

require("mason").setup({})
require("mason-lspconfig").setup {
    automatic_enable = false,
    ensure_installed = {
        "pyright",
        "lua_ls",
        "yamlls",
        "dockerls",
        "just",
        "marksman",
    },
}

require("noice").setup({
    notify = {
        enabled = true,
        view = "mini",
    },
})

require("oil").setup({
    default_file_explorer = true,
    columns = {
    	"icon",
    },
    use_default_keymaps = true,
})
vim.keymap.set("n", "<leader>ee", "<cmd>Oil<cr>", { desc = "Open oil file explorer" })

require("which-key").setup({})

require("transparent").setup({
    auto = true,
    groups = {
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
        'EndOfBuffer',
    },
    extra_groups = {
        "NvimTreeNormal",
    },
    exclude_groups = {},
    on_clear = function() end,
})

local capabilities = require("blink.cmp").get_lsp_capabilities()
vim.lsp.config( "pyright", { capabilities = capabilities } )
vim.lsp.config( "lua_ls", { capabilities = capabilities } )
vim.lsp.config( "gopls", { capabilities = capabilities } )
vim.lsp.config( "yamlls", { capabilities = capabilities } )
vim.lsp.config( "dockerls", { capabilities = capabilities } )
vim.lsp.config( "sourcekit", { capabilities = capabilities } )
vim.lsp.config( "just", { capabilities = capabilities } )
vim.lsp.config( "marksman", { capabilities = capabilities } )

vim.lsp.enable({
    "pyright",
    "lua_ls",
    "gopls",
    "dockerls",
    "sourcekit",
    "just",
    "marksman",
})

require("lazydev").setup({})

require("lualine").setup({
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        globalstatus = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
})

require("stay-centered").setup({})

require("fzf-lua").setup({

})
vim.keymap.set("n", "<leader>ff", function() require("fzf-lua").files() end, { desc = "Open fzf-lua file finder" })
vim.keymap.set("n", "<leader>fl", function() require ("fzf-lua").grep_curbuf() end, { desc = "Open fzf-lua line finder" })
