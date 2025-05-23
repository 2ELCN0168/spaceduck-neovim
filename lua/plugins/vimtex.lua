return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_compiler_method = "latexmk"
    vim.g.vimtex_quickfix_mode = 0
    vim.g.vimtex_complete_enabled = 1
    vim.g.vimtex_indent_enabled = 0
    vim.g.vimtex_syntax_enabled = 1
  end,
}
