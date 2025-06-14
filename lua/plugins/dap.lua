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

    dap.configurations.c = {
      {
        name = "Launch with GDB",
        type = "gdb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
      },
      {
        name = 'Launch with LLDB\n',
        type = 'lldb',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      },
    }

  end,
  keys = {
    { "<leader>dc", function() require("dap").continue() end, silent = true },
    { "<leader>db", function() require("dap").toggle_breakpoint() end, silent = true},
    { "<leader>du", function() require("dapui").toggle() end, silent = true },
  },
  enabled = true,
}
