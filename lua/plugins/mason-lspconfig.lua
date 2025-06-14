return {
  "mason-org/mason-lspconfig.nvim",
  lazy = false,
  opts = {
    ensure_installed = {
      "pyright", "jdtls", "cmake",
      "lua_ls", "clangd", "gopls",
      "zls", "asm_lsp", "bashls",
    },
  },
  enabled = true,
}
