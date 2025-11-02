return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "black" },
      javascript = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      go = { "gofmt" },
      c = { "clang-format" },
      cpp = { "clang-format" },
    },
  },
  config = function(_, opts)
    local conform = require("conform")
    conform.setup(opts)
    vim.keymap.set("n", "<leader>f", function()
      conform.format({ async = true, lsp_fallback = true })
    end, { desc = "Format file" })
  end,
}
