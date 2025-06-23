local var_strategy = {"terminal"}
local is_dap = false

if vim.g.plugin_toggleterm then
    var_strategy = {
        "toggleterm",
    }
end

if vim.g.plugin_dap then
    is_dap = true
end

return {
    "stevearc/overseer.nvim",
    lazy = false,
    opts = {
        strategy = var_strategy,
        dap = is_dap,
        templates = {
            "default.gcc_build",
        },
    },
    keys = {
        {"<leader>or", ":OverseerRun<CR>", silent = true, desc = "Overseer run"},
    },
    enabled = vim.g.plugin_overseer,
}
