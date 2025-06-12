return {
  "rcarriga/nvim-dap-ui",
  lazy = false,
  dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  opts = {},
  keys = {
    { "<leader>dp", function() require("dapui").toggle() end, silent = true },
  },
  enabled = true,
}
