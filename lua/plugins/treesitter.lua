local tree_sitter_servers = {}

if vim.g.lsp_c_cpp_objc_objcpp then
  table.insert(tree_sitter_servers, "c")
  table.insert(tree_sitter_servers, "cpp")
  table.insert(tree_sitter_servers, "objc")
end
if vim.g.lsp_python then
  table.insert(tree_sitter_servers, "python")
end
if vim.g.lsp_go then
  table.insert(tree_sitter_servers, "go")
end
if vim.g.lsp_java then
  table.insert(tree_sitter_servers, "java")
end
if vim.g.lsp_cmake then
  table.insert(tree_sitter_servers, "cmake")
end
if vim.g.lsp_assembly then
  table.insert(tree_sitter_servers, "disassembly")
end
if vim.g.lsp_lua then
  table.insert(tree_sitter_servers, "lua")
end
if vim.g.lsp_zig then
  table.insert(tree_sitter_servers, "zig")
end
if vim.g.lsp_bash then
  table.insert(tree_sitter_servers, "bash")
end
if vim.g.lsp_swift then
  table.insert(tree_sitter_servers, "swift")
end

return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = tree_sitter_servers,
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
