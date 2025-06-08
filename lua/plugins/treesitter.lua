return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup {
      ensure_installed = { "c", "lua", "python", "vim", "html"},
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
  enabled = true,
}
