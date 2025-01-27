return {
  'mawkler/modicator.nvim',
  init = function()
    vim.o.cursorline = true
  end,
  opts = {
    highlights = {
      defaults = {
        bold = true,
        italic = false,
      },
    },
  },
}
