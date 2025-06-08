return {
  "mason-org/mason-lspconfig.nvim",
  lazy = false,
  opts = {
    ensure_installed = { "pyright", "jdtls", "clangd", "intelephense", "lua_ls"},
  },
  enabled = true,
}
