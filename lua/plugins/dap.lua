return {
  "mfussenegger/nvim-dap",
  lazy = false,
  dependencies = {"rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "theHamsta/nvim-dap-virtual-text"},
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")
    require("nvim-dap-virtual-text").setup()
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

  end,
  enabled = true,
}
