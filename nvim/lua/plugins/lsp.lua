return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'L3MON4D3/LuaSnip' },
    },
    config = function(_, _)
      local lsp_zero = require('lsp-zero')

      lsp_zero.on_attach(function(_, buf)
        lsp_zero.default_keymaps({ buffer = buf })
        lsp_zero.buffer_autoformat()
        vim.lsp.inlay_hint.enable(buf, true)
      end)

      require('mason').setup({})
      require('mason-lspconfig').setup({
        ensure_installed = {
          'lua_ls',
          'rust_analyzer',
        },
        handlers = {
          lsp_zero.default_setup,
          lua_ls = function()
            require('lspconfig').lua_ls.setup({
              settings = {
                Lua = {
                  runtime = {
                    version = 'LuaJIT',
                  },
                  diagnostics = {
                    globals = { 'vim' },
                  },
                  workspace = {
                    library = {
                      vim.env.VIMRUNTIME,
                    },
                  },
                },
              },
            })
          end,
          rust_analyzer = function()
            require('lspconfig').rust_analyzer.setup({
              settings = {
                check = {
                  command = "clippy",
                  allTargets = false,
                },
              },
            })
          end,
        },
      })
    end,
  },
}
