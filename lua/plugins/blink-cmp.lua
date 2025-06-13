return {
  'saghen/blink.cmp',
  lazy = false,
  version = '1.*',
  opts = {
    keymap = { preset = 'default' },
    appearance = {
      nerd_font_variant = 'mono',
    },
    sources = {
      default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer'},
      providers = {
       lazydev = {
          name = "LazyDev",
          module = "lazydev.integrations.blink",
          score_offset = 100,
        },
      },
    },
    completion = {
      list = { selection = { preselect = false, auto_insert = false } },
      documentation = { auto_show = false },
      ghost_text = { enabled = true },
      menu = {
        auto_show = true,
        draw = {
          columns = {
            { "label", "label_description", gap = 1 },
            { "kind_icon", "kind" },
          },
        }
      },
    },
    signature = { enabled = true },
  },
  enabled = true,
}
