return {
  "yetone/avante.nvim",
  lazy = false,
  version = "0.0.*",
  build = "make BUILD_FROM_SOURCE=false",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
    "MeanderingProgrammer/render-markdown.nvim",
  },
  config = function()
    require('avante_lib').load()
    require('avante').setup{
      mode = "agentic",
      provider = "litellm",
      providers = {
        litellm = {
          __inherited_from = 'openai',
          endpoint = "https://llm.nightward.co.uk",
          api_key_name = "LITELLM_API_KEY",
          model = "gpt-4.1",
        },
      },
      selector = {
        provider = "telescope",
        provider_opts = {},
      },
    }
  end,
  keys = { {"<leader>aa", ":AvanteToggle<CR>", silent = true }, },
  enabled = true,
}
