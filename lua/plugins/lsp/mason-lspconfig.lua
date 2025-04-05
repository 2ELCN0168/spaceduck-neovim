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
      "pyright",
      "biome",
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
      -- Ansiblels overrides
      ["ansiblels"] = function()
        local lspconfig = require("lspconfig")
        lspconfig.ansiblels.setup({
          filetypes = { "yaml.ansible" },
          settings = {
            ansible = {
              ansible = {
                path = "ansible",
                useFullyQualifiedCollectionNames = true,
              },
              ansibleLint = {
                enabled = true,
                path = "ansible-lint",
              },
              executionEnvironment = {
                enabled = false,
              },
              completion = {
                provideRedirectModules = true,
                provideModuleOptionAliases = true,
              },
            },
          },
          -- on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
    })
  end,
}
