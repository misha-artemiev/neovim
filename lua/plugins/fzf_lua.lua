return {
    "ibhagwan/fzf-lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        { "<leader>ff", function() require('fzf-lua').files() end, silent = true },
    },
    enabled = vim.g.plugin_fzf_lua and not vim.g.plugin_switch_fzf_telescope,
}
