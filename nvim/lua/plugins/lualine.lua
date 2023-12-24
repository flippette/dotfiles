return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'catppuccin' },
  opts = {
    options = {
      icons_enabled = false,
      component_separators = '|',
      section_separators = '',
      theme = 'catppuccin-mocha',
    },
  },
  config = true,
}
