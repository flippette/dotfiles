return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    { "pest-parser/pest.vim" },
  },
  config = function()
    local lsp_zero = require("lsp-zero")
    local lspconfig = require("lspconfig")
    local cmp = require("cmp")

    lsp_zero.on_attach(function(_, bufnr)
      lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
      })
      lsp_zero.buffer_autoformat()
    end)

    require("mason-lspconfig").setup({
      ensure_installed = {
        "clangd",
        "emmet_language_server",
        "lua_ls",
        "marksman",
        "rust_analyzer",
        "tailwindcss",
        "tsserver",
        "wgsl_analyzer",
      },
      handlers = {
        lsp_zero.default_setup,
        tailwindcss = function()
          lspconfig.tailwindcss.setup({
            userLanguages = {
              rust = "html",
            },
          })
        end,
        rust_analyzer = function()
          lspconfig.rust_analyzer.setup({
            settings = {
              ["rust-analyzer"] = {
                check = {
                  command = "clippy",
                  allTargets = false,
                },
              },
            },
          })
        end,
      },
    })

    cmp.setup({
      mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      },
    })
  end,
}
