return {
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {},
        keys = {
            {"<leader>ff", function() require("telescope.builtin").find_files() end, silent = true},
        },
        enabled = vim.g.plugin_fzf_lua and vim.g.extension_fzf_telescope,
    },
    {
        "nvim-telescope/telescope-dap.nvim",
        lazy = false,
        config = function()
            require('telescope').load_extension('dap')
        end,
        keys = {
            {"<leader>dc", ":Telescope dap configurations<CR>", silent = true, desc = "Open dap configuration"},
        },
        enabled = vim.g.extension_telescope_for_dap and vim.g.plugin_dap and vim.g.plugin_fzf_lua and vim.g.extension_telescope_for_dap,
    },
}
