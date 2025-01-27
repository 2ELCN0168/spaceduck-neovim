return {
  "williamboman/mason.nvim",
  -- dependencies = { "williamboman/mason-lspconfig.nvim", },
  build = ":MasonUpdate",

  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },

  config = function()
    require("mason").setup({})
  end,
}
