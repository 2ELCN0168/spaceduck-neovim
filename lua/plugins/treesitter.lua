return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  build = ":TSUpdate",

  config = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
    })
  end,
}
