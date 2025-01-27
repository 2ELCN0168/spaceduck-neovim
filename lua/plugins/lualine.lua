return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'folke/snacks.nvim' },
  lazy = false,
  -- event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      vim.o.statusline = ' '
    else
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    local lualine_require = require 'lualine'
    lualine_require.require = require
    local opts = {
      options = {
        icons_enabled = true,
        theme = 'auto',
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = {
          statusline = { 'alpha', 'dashboard', 'ministarter', 'snacks_dashboard', 'neo-tree' },
        },
        section_separators = { left = '', right = '' },
        component_separators = '',
        always_show_tabline = true,
        ignore_focus = {},
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          {
            'branch',
            always_visible = true,
          },
        },
        lualine_c = {
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = {
              error = ' ',
              warn = ' ',
              info = ' ',
              hint = '󱠇 ',
            },
            always_visible = false,
          },
          {
            'filetype',
            icon_only = true,
            separator = '',
            padding = { left = 1, right = 0 },
          },
        },
        lualine_x = {
          {
            require('lazy.status').updates,
            cond = require('lazy.status').has_updates,
            color = function()
              return { fg = Snacks.util.color 'Special' }
            end,
          },
          {
            'diff',
            symbols = {
              added = ' ',
              modified = ' ',
              removed = ' ',
            },
            source = function()
              local gitsigns = vim.b.gitsigns_status_dict
              if gitsigns then
                return {
                  added = gitsigns.added,
                  modified = gitsigns.changed,
                  removed = gitsigns.removed,
                }
              end
            end,
          },
        },
        lualine_y = {
          { 'progress', separator = ' ', padding = { left = 1, right = 0 } },
          { 'location', separator = ' ', padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          function()
            return ' ' .. os.date '%R'
          end,
        },
      },
      extensions = { 'neo-tree', 'lazy', 'fzf' },
    }
    return opts
  end,
}
