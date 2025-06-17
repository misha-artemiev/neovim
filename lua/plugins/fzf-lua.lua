return {
    "ibhagwan/fzf-lua",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        winopts = {},
        keymap = {},
        actions = {},
        fzf_opts = {},
        fzf_colors = {},
        hls = {},
        previewers = {},
    },
    keys = {
        { "<leader>ff", function() require('fzf-lua').files() end, silent = true },
    },
    enabled = vim.g.plugin_fzf_lua,
}
