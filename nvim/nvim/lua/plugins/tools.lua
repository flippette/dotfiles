return {
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    { "williamboman/mason.nvim" },
  },
  opts = {
    ensure_installed = {
      -- lsps
      "clangd",
      "emmet_language_server",
      "lua_ls",
      "marksman",
      "rust_analyzer",
      "tailwindcss",
      "tsserver",
      "wgsl_analyzer",

      -- formatters
      "prettier",
      "rustywind",
      "stylua",
    },
    auto_update = true,
  },
}
