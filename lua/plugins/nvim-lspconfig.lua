return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    lspconfig.pyright.setup { capabilities = capabilities }
    lspconfig.jdtls.setup { capabilities = capabilities }
    lspconfig.cmake.setup { capabilities = capabilities }
    lspconfig.lua_ls.setup { capabilities = capabilities }
    lspconfig.sourcekit.setup { capabilities = capabilities }
    lspconfig.clangd.setup { capabilities = capabilities }
    lspconfig.gopls.setup { capabilities = capabilities }
    lspconfig.zls.setup { capabilities = capabilities }
    lspconfig.asm_lsp.setup { capabilities = capabilities }
    lspconfig.bashls.setup { capabilities = capabilities }
  end,
  enabled = true,
}
