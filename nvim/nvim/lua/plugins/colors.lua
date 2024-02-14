return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  init = function(_)
    vim.cmd.colorscheme("catppuccin")
  end,
  opts = {
    integrations = {
      which_key = true,
    },
  },
}
