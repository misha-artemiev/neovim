return { 
    "mfussenegger/nvim-dap",
    lazy = false,
    dependencies = {"rcarriga/nvim-dap-ui", "nvim-neotest/nvim-nio", "theHamsta/nvim-dap-virtual-text"},
    config = function()
        require("dapui").setup{}
        require("nvim-dap-virtual-text").setup{}
        local dap = require("dap")
    end,
    enabled = vim.g.plugin_dap,
}
