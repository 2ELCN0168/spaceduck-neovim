return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    animate = {
      ---@class snacks.animate.Config
      ---@field easing? snacks.animate.easing|snacks.animate.easing.Fn
      {
        ---@type snacks.animate.Duration|number
        duration = 20, -- ms per step
        easing = "linear",
        fps = 60, -- frames per second. Global setting for all animations
      }
    },
    bigfile = { enabled = true },
    dashboard = {
      preset = {
        header = [[
                                                                    
      ████ ██████           █████      ██                     
     ███████████             █████                             
     █████████ ███████████████████ ███   ███████████   
    █████████  ███    █████████████ █████ ██████████████   
   █████████ ██████████ █████████ █████ █████ ████ █████   
 ███████████ ███    ███ █████████ █████ █████ ████ █████  
██████  █████████████████████ ████ █████ █████ ████ ██████ 
        ]],
      },
    },
    dim = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = { enabled = true },
    picker = { enabled = true },
    rename = { enabled = true },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    toggle = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>ff", function() Snacks.picker() end, desc = "Open Picker" },
    { "<leader>fr", function() Snacks.rename.rename_file() end, desc = "Rename file" },
    { "<leader>hn", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    { "<leader>mg", function() Snacks.lazygit() end, desc = "Lazygit" },
    { "<leader>tt", function() Snacks.terminal() end, desc = "Toggle Terminal" },
    {
      "<leader>hN",
      desc = "Neovim News",
      function()
        Snacks.win({
          file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
          width = 0.6,
          height = 0.6,
          wo = {
            spell = false,
            wrap = false,
            signcolumn = "yes",
            statuscolumn = " ",
            conceallevel = 3,
          },
        })
      end,
    }
  },
  init = function()
    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        -- Setup some globals for debugging (lazy-loaded)
        _G.dd = function(...)
          Snacks.debug.inspect(...)
        end
        _G.bt = function()
          Snacks.debug.backtrace()
        end
        vim.print = _G.dd -- Override print to use snacks for `:=` command

        -- Create some toggle mappings
        Snacks.toggle.animate():map("<leader>ua")
        Snacks.toggle.line_number():map("<leader>un")
        Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uN")
        Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub")
        Snacks.toggle.dim():map("<leader>ud")
        Snacks.toggle.scroll():map("<leader>us")
        Snacks.toggle.zen():map("<leader>uz")
        Snacks.toggle.zoom():map("<leader>uZ")
        Snacks.toggle({
          name = "Git Signs",
          get = function()
            return require("gitsigns.config").config.signcolumn
          end,
          set = function(state)
            require("gitsigns").toggle_signs(state)
          end,
        }):map("<leader>uG")
      end,
    })
  end,
}
