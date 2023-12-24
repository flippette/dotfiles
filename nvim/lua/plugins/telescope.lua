return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = true,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function(_, _)
      require('telescope').setup()
      require('telescope').load_extension('fzf')
    end,
  }
}
