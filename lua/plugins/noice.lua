return {
    "folke/noice.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
    config = function()
        require("noice").setup()
        require("notify").setup({
            background_colour = "#000000",
        })
    end,
    enabled = vim.g.plugin_noice,
}
