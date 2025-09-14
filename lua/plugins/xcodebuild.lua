return {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
        "ibhagwan/fzf-lua",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-tree.lua",
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        require("xcodebuild").setup({
            show_build_progress_bar = true,
            project_manager = {
                find_xcodeproj = true,
            },
            integrations = {
                pymobiledevice = {
                    enabled = true,
                },
                xcode_build_server = {
                    enabled = true,
                },
                nvim_tree = {
                    enabled = true,
                },
                quick = {
                    enabled = true,
                },
                snacks_nvim = {
                    enabled = vim.g.plugin_snacks_image,
                },
                fzf_lua = {
                    enabled = true,
                    fzf_opts = {},
                    win_opts = {},
                },
            },
        })
    end,
    enabled = vim.g.plugin_xcode,
}
