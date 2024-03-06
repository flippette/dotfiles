return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "rustywind" },
      htmldjango = { "rustywind" },
      javascript = { { "prettier", "rustywind" } },
      javascriptreact = { { "prettier", "rustywind" } },
      json = { "prettier" },
      jsonc = { "prettier" },
      lua = { "stylua" },
      rust = { "rustywind" },
      typescript = { { "prettier", "rustywind" } },
      typescriptreact = { { "prettier", "rustywind" } },
    },
    format_after_save = {
      lsp_fallback = true,
    },
  },
}
