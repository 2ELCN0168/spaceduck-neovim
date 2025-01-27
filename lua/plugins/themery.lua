return {
  "zaldih/themery.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("themery").setup({
      themes = {
        {
          name = "Bluloco (Dark)",
          colorscheme = "bluloco",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Bluloco (Light)",
          colorscheme = "bluloco",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Gruvbox (Dark)",
          colorscheme = "gruvbox",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Gruvbox (Light)",
          colorscheme = "gruvbox",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Tokyonight Day (Light)",
          colorscheme = "tokyonight-day",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Tokyonight Storm (Soft)",
          colorscheme = "tokyonight-storm",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Tokyonight Moon (Medium)",
          colorscheme = "tokyonight-moon",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Tokyonight Night (Dark)",
          colorscheme = "tokyonight-night",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Nordic (Soft)",
          colorscheme = "nordic",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Nord (Soft)",
          colorscheme = "nord",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Iceberg (Dark)",
          colorscheme = "iceberg",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Cyberdream (Dark)",
          colorscheme = "cyberdream",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Neo Solarized (Dark)",
          colorscheme = "NeoSolarized",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Tokyo Dark (Dark)",
          colorscheme = "tokyodark",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Kanagawa (Light)",
          colorscheme = "kanagawa-lotus",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Kanagawa (Dark)",
          colorscheme = "kanagawa-wave",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Dracula (Light)",
          colorscheme = "dracula-day",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Dracula (Dark)",
          colorscheme = "dracula",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Catppuccin Latte (Light)",
          colorscheme = "catppuccin-latte",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Catppuccin Frappe (Soft)",
          colorscheme = "catppuccin-frappe",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Catppuccin Macchiato (Medium)",
          colorscheme = "catppuccin-macchiato",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Catppuccin Mocha (Dark)",
          colorscheme = "catppuccin-mocha",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Coal (Dark)",
          colorscheme = "coal",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Oxocarbon (Dark)",
          colorscheme = "oxocarbon",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Everforest (Light)",
          colorscheme = "everforest",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Everforest (Dark)",
          colorscheme = "everforest",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Dracula (Dark)",
          colorscheme = "dracula",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Github (Light)",
          colorscheme = "github_light",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Github (Soft)",
          colorscheme = "github_dark",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Github (Soft Darker)",
          colorscheme = "github_dark_dimmed",
          before = [[
            vim.opt.background = "dark"
          ]],
        },

        {
          name = "Github (Dark)",
          colorscheme = "github_dark_default",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Nvimgelion (Dark)",
          colorscheme = "nvimgelion",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Miasma (Dark)",
          colorscheme = "miasma",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Moonfly (Dark)",
          colorscheme = "moonfly",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Nightfly (Dark)",
          colorscheme = "nightfly",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Miasma (Dark)",
          colorscheme = "miasma",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Rose Pine (Light)",
          colorscheme = "rose-pine-dawn",
          before = [[
            vim.opt.background = "light"
          ]],
        },
        {
          name = "Rose Pine (Medium)",
          colorscheme = "rose-pine-moon",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Rose Pine (Dark)",
          colorscheme = "rose-pine-main",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Onedark (Dark)",
          colorscheme = "onedark",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Poimandres (Soft)",
          colorscheme = "poimandres",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Substrata (Dark)",
          colorscheme = "substrata",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "Spaceduck (Dark)",
          colorscheme = "spaceduck",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
        {
          name = "VScode (Dark)",
          colorscheme = "vscode",
          before = [[
            vim.opt.background = "dark"
          ]],
        },
      },
      livePreview = true, -- Apply theme while browsing. Default to true.
    })
  end,
}
