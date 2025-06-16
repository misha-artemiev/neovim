local lsp_servers = {}

if vim.g.lsp_c_cpp_objc_objcpp then
  table.insert(lsp_servers, "clangd")
end
if vim.g.lsp_python then
  table.insert(lsp_servers, "pyright")
end
if vim.g.lsp_go then
  table.insert(lsp_servers, "gopls")
end
if vim.g.lsp_java then
  table.insert(lsp_servers, "jdtls")
end
if vim.g.lsp_cmake then
  table.insert(lsp_servers, "cmake")
end
if vim.g.lsp_assembly then
  table.insert(lsp_servers, "asm_lsp")
end
if vim.g.lsp_lua then
  table.insert(lsp_servers, "lua_ls")
end
if vim.g.lsp_zig then
  table.insert(lsp_servers, "zls")
end
if vim.g.lsp_bash then
  table.insert(lsp_servers, "bashls")
end

return {
  "mason-org/mason-lspconfig.nvim",
  lazy = false,
  opts = {
    ensure_installed = lsp_servers,
  },
  enabled = vim.g.plugin_mason,
}
