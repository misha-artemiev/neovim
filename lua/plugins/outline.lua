return {
    "hedyhli/outline.nvim",
    lazy = false,
    opts = {
        outline_window = {
            hide_cursor = true,
            focus_on_open = false,
        },
    },
    keys = {
        {"<leader>o", ":Outline<CR>", desc = "Toggle Outline", silent = true},
    },
    enable = vim.g.plugin_outline,
}
