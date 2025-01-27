return {
  'cranberry-clockworks/coal.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('coal').setup()
  end,
}
