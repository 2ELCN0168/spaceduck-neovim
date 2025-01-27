return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  cmd = "Neotree",
  keys = {
    { "<leader>ee", function() require("neo-tree.command").execute({ toggle = true }) end, desc = "NeoTree" },
    { "<leader>eg", function() require("neo-tree.command").execute({ source = "git_status", toggle = true }) end, desc = "NeoTree Git explorer" },
    { "<leader>eb", function() require("neo-tree.command").execute({ source = "buffers", toggle = true }) end, desc = "NeoTree buffers explorer" },
    { "<C-l>", "<C-w>l", desc = "Focus right buffer" },
    { "<C-h>", "<C-w>h", desc = "Focus left buffer" },
  },
  deactivate = function()
    vim.cmd([[Neotree close]])
  end,
  opts = {
    event_handlers = {
      {
        event = "file_moved",
        handler = function(data)
          Snacks.rename.on_rename_file(data.source, data.destination)
        end,
      },
      {
        event = "file_renamed",
        handler = function(data)
          Snacks.rename.on_rename_file(data.source, data.destination)
        end,
      },
    },
    git_status = {
      symbols = {
        -- Change type
        added     = "✚",
        deleted   = "✖",
        modified  = "",
        renamed   = "󰁕",
        -- Status type
        untracked = "",
        ignored   = "",
        unstaged  = "󰄱",
        staged    = "",
        conflict  = "",
      },
    },
    default_component_configs = {
        diagnostics = {
          symbols = {
            hint = "󰌵",
            info = " ",
            warn = " ",
            error = "",
          },
          highlights = {
            hint = "DiagnosticSignHint",
            info = "DiagnosticSignInfo",
            warn = "DiagnosticSignWarn",
            error = "DiagnosticSignError",
          },
        },
      }

  },
  config = function(_, opts)
    require("neo-tree").setup(opts)
  end,
}

