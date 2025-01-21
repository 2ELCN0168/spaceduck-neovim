return {
  "akinsho/bufferline.nvim",
  event = "VimEnter",
  keys = {
    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete Non-Pinned Buffers" },
    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete Buffers to the Right" },
    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete Buffers to the Left" },
    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<leader>bb", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
    { "<leader>bn", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
    { "<leader>bB", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
    { "<leader>bN", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
  },
  opts = {
    options = {
      close_command = function(n) Snacks.bufdelete(n) end,
      right_mouse_command = function(n) Snacks.bufdelete(n) end,
      diagnostics = "nvim_lsp",
      mode = "buffers",
      numbers = "buffer_id",
      left_mouse_command = "buffer %d",
      middle_mouse_command = nil,
      indicator = {
        style = "icon",
      },
      separator_style = "thick",
      hover = {
        enabled = true,
        delay = 200,
        reveal = { 'close' },
      },
      always_show_bufferline = true,
      -- diagnostics_indicator = function(_, _, diag)
        -- local icons = LazyVim.config.icons.diagnostics
        -- local ret = (diag.error and icons.Error .. diag.error .. " " or "")
          -- .. (diag.warning and icons.Warn .. diag.warning or "")
        -- return vim.trim(ret)
      -- end,
      offsets = {
        {
          filetype = "neo-tree",
          text = "Neo-tree",
          highlight = "Directory",
          text_align = "left",
        },
      },
      ---@param opts bufferline.IconFetcherOpts
      -- get_element_icon = function(opts)
        -- return LazyVim.config.icons.ft[opts.filetype]
      -- end,
    },
  },
  config = function(_, opts)
    local bufferline = require("bufferline")
    require("bufferline").setup(opts)
    -- Fix bufferline when restoring a session
    opts.options.style_preset = {
      bufferline.style_preset.no_italic,
      bufferline.style_preset.no_bold,
    }

    opts.options.groups.items = {
      require("bufferline.groups").builtin.pinned:with({
        icon = " 󰐃",
      }),
    }

    vim.api.nvim_create_autocmd({ "BufAdd", "BufDelete" }, {
      callback = function()
        vim.schedule(function()
          pcall(nvim_bufferline)
        end)
      end,
    })
  end,
}
