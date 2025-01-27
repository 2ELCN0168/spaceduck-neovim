return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },
  version = "*",

  opts = {
    keymap = { preset = "super-tab" },

    appearance = {
      use_nvim_cmp_as_default = true,
      nerd_font_variant = "mono",
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
      providers = {
        markdown = {
          name = "RenderMarkdown",
          module = "render-markdown.integ.blink",
          fallbacks = { "lsp" },
        },
      },
    },

    completion = {
      accept = {
        auto_brackets = {
          enabled = false,
        },
      },

      ghost_text = {
        enabled = false,
      },
    },
  },
  opts_extend = { "sources.default" },
}
