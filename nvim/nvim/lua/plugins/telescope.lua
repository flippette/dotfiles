return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "find files" })
    vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "live grep" })
    vim.keymap.set("n", "<leader>?", builtin.keymaps, { desc = "search keymaps" })
  end,
}
