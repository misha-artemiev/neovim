return {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    if vim.g.lsp_python then
      lspconfig.pyright.setup { capabilities = capabilities }
    end
    if vim.g.lsp_java then
      lspconfig.jdtls.setup { capabilities = capabilities }
    end
    if vim.g.lsp_cmake then
      lspconfig.cmake.setup { capabilities = capabilities }
    end
    if vim.g.lsp_lua then
      lspconfig.lua_ls.setup { capabilities = capabilities }
    end
    if vim.g.lsp_swift then
      lspconfig.sourcekit.setup { capabilities = capabilities }
    end
    if vim.g.lsp_c_cpp_objc_objcpp then
      lspconfig.clangd.setup { capabilities = capabilities }
    end
    if vim.g.lsp_go then
      lspconfig.gopls.setup { capabilities = capabilities }
    end
    if vim.g.lsp_zig then
      lspconfig.zls.setup { capabilities = capabilities }
    end
    if vim.g.lsp_assembly then
      lspconfig.asm_lsp.setup { capabilities = capabilities }
    end
    if vim.g.lsp_bash then
      lspconfig.bashls.setup { capabilities = capabilities }
    end
  end,
  enabled = vim.g.plugin_lspconfig,
}
