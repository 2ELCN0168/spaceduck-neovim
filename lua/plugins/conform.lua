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
      },
      format_on_save = {
        lsp_fallback = false,
        async = false,
        timeout_ms = 500,
      },
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
