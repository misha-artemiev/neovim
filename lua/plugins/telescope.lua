return {
    "nvim-telescope/telescope.nvim",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim", "lpoto/telescope-docker.nvim" },
    config = function()
        require("telescope").setup{
            extensions = {
                docker = {
                    binary = "podman",
                    log_level = vim.log.levels.INFO,
                }
            }
        }
        require("telescope").load_extension("docker")
    end,
    keys = {
        { "<leader>ff", function() require("telescope.builtin").find_files() end, silent = true },
        { "<leader>fg", function() require("telescope.builtin").live_grep() end, silent = true },
        { "<leader>fb", function() require("telescope.builtin").buffers() end, silent = true },
        { "<leader>fh", function() require("telescope.builtin").help_tags() end, silent = true },
        { "<leader>fd", ":Telescope docker<CR>", silent = true},
    },
    enabled = vim.g.plugin_telescope,
}
