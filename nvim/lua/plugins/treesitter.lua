return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,

      -- disable highlighting for large files
      disable = function(_, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(
          vim.loop.fs_stat,
          vim.api.nvim_buf_get_name(buf)
        )
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,

      additional_vim_regex_highlighting = false
    },

    indent = {
      enabled = true,
    },
  },
  init = function(plugin)
    require('lazy.core.loader').add_to_rtp(plugin)
    require('nvim-treesitter.query_predicates')
  end,
  config = true,
}
