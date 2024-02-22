return {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v3.x",
  dependencies = {
    { "neovim/nvim-lspconfig" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/nvim-cmp" },
    { "L3MON4D3/LuaSnip" },
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

    lspconfig.lua_ls.setup({})
    lspconfig.clangd.setup({})
    lspconfig.tailwindcss.setup({})
    lspconfig.rust_analyzer.setup({
      settings = {
        ["rust-analyzer"] = {
          check = {
            command = "clippy",
            extraArgs = {
              "--",
              "-W",
              "clippy::pedantic",
            },
            allTargets = false,
          },
        },
      },
    })

    cmp.setup({
      mapping = {
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      },
    })
  end,
}
