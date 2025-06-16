return {
  "mfussenegger/nvim-dap",
  lazy = false,
  version = "0.10.*",
  dependencies = {"rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio"},
  config = function()
    require("dapui").setup()
    local dap = require("dap")

    dap.adapters = {
      gdb = {
        type = "executable",
        command = "gdb",
        args = { "--interpreter=dap", "--silent"},
      },
      lldb = {
        type = "executable",
        command = "lldb",
        name = 'lldb',
      },
    }

    dap.configurations.c = {}

  end,
  keys = {
    { "<leader>dc", function() require("dap").continue() end, silent = true },
    { "<leader>db", function() require("dap").toggle_breakpoint() end, silent = true},
    { "<leader>du", function() require("dapui").toggle() end, silent = true },
  },
  enabled = vim.g.plugin_dap,
}
