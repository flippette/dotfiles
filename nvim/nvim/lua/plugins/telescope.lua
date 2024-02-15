return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>?", builtin.keymaps, { desc = "Search keymaps" })
    vim.keymap.set("n", "<leader>d", builtin.diagnostics, { desc = "Search diagnostics" })
  end,
}
