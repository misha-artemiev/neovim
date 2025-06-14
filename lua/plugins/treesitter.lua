return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "c", "cpp", "lua", "vim",
        "cmake", "java", "css",
        "html", "disassembly",
        "go", "zig", "javascript",
        "json", "make", "llvm",
        "objc", "python", "regex",
        "rust", "sql", "swift", "toml",
        "xml", "yaml",
      },
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
