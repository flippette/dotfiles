return {
  {
    "folke/noice.nvim",
    dependencies = {
      { "MunifTanjim/nui.nvim" },
    },
    opts = {
      cmdline = {
        format = {
          cmdline = { icon = ">" },
          search_down = { icon = "↓" },
          search_up = { icon = "↑" },
          lua = { icon = "L" },
          help = { icon = "?" },
        },
      },
      popupmenu = { enabled = false },
      hover = { enabled = false },
      signature = { enabled = false },
    },
  }
}
