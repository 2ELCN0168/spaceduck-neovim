return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  -- event = "VeryLazy",
  init = function()
    vim.g.lualine_laststatus = vim.o.laststatus 
    if vim.fn.argc(-1) > 0 then
      vim.o.statusline = " "
    else
      vim.o.laststatus = 0
    end
  end,
  opts = function()
    local lualine_require = require("lualine")
    lualine_require.require = require
    local opts = {
      options = {
        icons_enabled = true,
        theme = "auto",
        globalstatus = vim.o.laststatus == 3,
        disabled_filetypes = {
          statusline = { "alpha", "dashboard", "ministarter", "snacks_dashboard", "neo-tree" },
        },
        section_separators = { left = "", right = "" },
        component_separators = "",
        always_show_tabline = true,
        ignore_focus = {},
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { 
          { 
            "branch", 
            always_visible = true,
          },
        },
        lualine_c = { 
          {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = {
              error = " ",
              warn = " ",
              info = " ",
              hint = "󱠇 ",
            },
            always_visible = true,
          },
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = {
              left = 1,
              right = 0,
            },
          },
        },
        lualine_x = {
          {
            require("lazy.status").updates,
            cond = require("lazy.status").has_updates,
            color = function() return { fg = Snacks.util.color("Special") } end,
          },
        },
        lualine_y = { "diff" },
        lualine_z = { "mode" },
      },
    }
    return opts
  end,
}
