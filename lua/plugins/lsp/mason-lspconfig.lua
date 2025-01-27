return {
  "williamboman/mason-lspconfig.nvim",
  build = ":MasonUpdate",
  dependencies = {
    "williamboman/mason.nvim",
  },

  opts = {
    ensure_installed = {
      "lua_ls",
      "clangd",
      "bashls",
      "dockerls",
      "ansiblels",
    },
  },

  config = function(_, opts)
    require("mason-lspconfig").setup({
      ensure_installed = opts.ensure_installed,
    })
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        require("lspconfig")[server_name].setup({})
      end,
      -- Lua overrides
      ["lua_ls"] = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
            capabilities = capabilities,
          },
        })
      end,
      -- Bashls overrides
      ["bashls"] = function()
        local lspconfig = require("lspconfig")
        lspconfig.bashls.setup({
          settings = {
            bashIDE = {
              shellcheckPath = "",
            },
          },
          capabilities = capabilities,
        })
      end,
    })
  end,
}
