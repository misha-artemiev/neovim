return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "c", "cpp", "lua", "vim" },
      auto_install = false,
      sync_install = false,
      ignore_install = {},
      highlight = { enable = true },
      indent = { enable = true },
      modules = {},
    }
  end,
  enabled = true,
}
