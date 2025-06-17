return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
        {"<leader>ha", function() require("harpoon"):list():add() end, silent = true},
        {"<leader>hr", function() require("harpoon"):list():remove() end, silent = true},
        {"<leader>hh", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, silent = true},
    },
    enabled = vim.g.plugin_harpoon,
}
