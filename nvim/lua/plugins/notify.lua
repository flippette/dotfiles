return {
  {
    'rcarriga/nvim-notify',
    opts = {
      background_colour = '#000000',
    },
    config = true,
  },
  {
    'mrded/nvim-lsp-notify',
    requires = { 'rcarriga/nvim-notify' },
    config = function(_, _)
      require('lsp-notify').setup({
        notify = require('notify'),
      })
    end,
  }
}
