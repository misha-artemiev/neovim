return {
    "folke/lazydev.nvim",
    lazy = false,
    ft = "lua", -- only load on lua files
    opts = {
        library = {
            "lazy.nvim",
            "nvim-dap-ui",
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        },
    },
    enabled = vim.g.plugin_lazydev,
}
