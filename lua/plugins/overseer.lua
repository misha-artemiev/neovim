local var_strategy = {"terminal"}
local var_dap = false

if vim.g.plugin_toggleterm then
    var_strategy = {
        "toggleterm",
        direction = "float",
        open_on_start = true,
        auto_scroll = true,
    }
end

if vim.g.plugin_dap then
    var_dap = true
end

return {
    "stevearc/overseer.nvim",
    lazy = false,
    opts = {
        strategy = var_strategy,
        dap = var_dap,
        templates = { "builtin",},
    },
    enabled = vim.g.plugin_overseer,
}
