return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = "all",

      -- modules
      highlight = { enable = true },
      indent = { enable = true },
      textobjects = { enable = true },
      incremental_selection = { enable = true },
    })
  end,
}
