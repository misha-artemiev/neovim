return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
        {"<leader>ff", function() require("telescope.builtin").find_files() end, silent = true},
    },
    enabled = vim.g.plugin_fzf_lua and vim.g.extension_fzf_telescope,
}
