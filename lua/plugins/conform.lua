return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  lazy = true,
  event = { "BufReadPre", "BufNewFile", "BufWritePre" },

  config = function()
    local conform = require("conform")
    conform.setup({
      formatters_by_ft = {
        c = { "clang_format" },
        cpp = { "clang_format" },
        lua = { "stylua" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        tex = { "latexindent" },
      },
      format_on_save = {
        lsp_fallback = false,
        async = false,
        timeout_ms = 500,
      },
      -- format_on_save = {
      --   lsp_fallback = false,
      --   timeout_ms = 500,
      --   filter = function(bufnr)
      --     local ft = vim.bo[bufnr].filetype
      --     return  or ft == "lua" or ft == "sh"
      --   end,
      -- },
      formatters = {
        clang_format = {
          command = "clang-format",
          args = {
            "--style",
            "google",
          },
          stdin = true,
        },
        shfmt = {
          command = "shfmt",
          args = {
            "-i",
            "8",
            "-bn",
            "-sr",
            "-fn",
          },
          stdin = true,
        },
        ansible_lint = {
          command = "ansible-lint",
          args = { "-" },
          stdin = true,
        },
        latexindent = {
          command = "latexindent",
          stdin = true,
        },
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>cf", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range" })
  end,
}
