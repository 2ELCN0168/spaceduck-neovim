return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",

  opts = {
    ensure_installed = {
      -- FORMATTERS
      "beautysh",
      "clang-format",
      "stylua",

      -- LINTERS
      "shellcheck",
    },
  },

  config = function(_, opts)
    require("mason-tool-installer").setup(opts)
  end,
}
