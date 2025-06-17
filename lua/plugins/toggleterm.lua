return {
    "akinsho/toggleterm.nvim",
    lazy = false,
    version = "*",
    opts = {},
    keys = {
        {"<leader>tt", ":ToggleTerm<CR>", silent = true, desc = "Toggle terminal"},
        {"<leader>tf", ":ToggleTerm direction=float<CR>", silent = true, desc = "Toggle floating terminal"},
    },
    enabled = vim.g.plugin_toggleterm,
}
