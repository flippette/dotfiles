return {
  {
    "rcarriga/nvim-notify",
    opts = {
      render = "simple",
      stages = "static",
    },
  },
  {
    "mrded/nvim-lsp-notify",
    dependencies = {
      { "rcarriga/nvim-notify" },
    },
    config = function()
      require("lsp-notify").setup({
        notify = require("notify"),
        icons = false,
      })
    end,
  },
}
