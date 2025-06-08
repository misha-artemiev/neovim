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
      system_prompt = function()
        local hub = require("mcphub").get_hub_instance()
        return hub and hub:get_active_servers_prompt() or ""
      end,
      custom_tools = function()
        return { require("mcphub.extensions.avante").mcp_tool(), }
      end,
    }
  end,
  keys = { {"<leader>aa", ":AvanteToggle<CR>", silent = true }, },
  enabled = true,
}
