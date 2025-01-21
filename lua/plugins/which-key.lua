return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    defaults = {},
    icons = {
      mappings = false,
      group = "",
      separator = "",
    },
    spec = {
      {
        mode = { "n", "v" },
	{ "<leader>e", group = "📁 Explorer" },
	{ "<leader>s", group = "🏮 Splits" },
	{ "<leader>t", group = "🔰 Tabs" },
	{ "<leader>w", group = "🌸 Windows" },
	{ "<leader>b", group = "🧼 Buffers" },
	{ "<leader>u", group = "🐲 UI" },
	{ "<leader>m", group = "💠 Management" },
	{ "<leader>c", group = "🌀 Code" },
	-- Better description
	{ "gx", desc = "Open with system app" },
      }
    },
  },
}
