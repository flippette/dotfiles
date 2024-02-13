return {
  "kevinhwang91/nvim-ufo",
  dependencies = {
    { "kevinhwang91/promise-async" },
    { "nvim-treesitter/nvim-treesitter" },
  },
  opts = {
    provider_selector = function()
      return { "treesitter", "indent" }
    end,
  },
  config = function(_, opts)
    local ufo = require("ufo")

    ufo.setup(opts)

    vim.o.foldcolumn = "1"
    vim.o.foldlevel = 99
    vim.o.foldlevelstart = 99
    vim.o.foldenable = true

    vim.keymap.set("n", "zR", ufo.openAllFolds, { desc = "Open all folds" })
    vim.keymap.set("n", "zM", ufo.closeAllFolds, { desc = "Close all folds" })
  end
}
