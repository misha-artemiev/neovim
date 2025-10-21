return {
    "nvim-neotest/neotest",
    lazy = false,
    dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter"
    },
    config = function()
    end,
    enabled = vim.g.plugin_neotest,
}
