return {
  'nvim-telescope/telescope.nvim',
  lazy = false,
  dependencies = { "nvim-lua/plenary.nvim", },
  opts = {},
  keys = {
    { "<leader>ff", function() require("telescope.builtin").find_files() end, silent = true },
    { "<leader>fg", function() require("telescope.builtin").live_grep() end, silent = true },
    { "<leader>fb", function() require("telescope.builtin").buffers() end, silent = true },
    { "<leader>fh", function() require("telescope.builtin").help_tags() end, silent = true },
  },
  enabled = true,
}
