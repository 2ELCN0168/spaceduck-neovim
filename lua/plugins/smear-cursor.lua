return {
  "sphamba/smear-cursor.nvim",
  cond = vim.g.neovide == nil,
  opts = {
    hide_target_hack = true,
    cursor_color = "none",
  },
}
