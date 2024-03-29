return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzy-native.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({
      defaults = require("telescope.themes").get_dropdown({
        prompt_prefix = "",
        selection_caret = "",
        entry_prefix = "",
      }),
    })
    telescope.load_extension("fzy_native")

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "Find files" })
    vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "Live grep" })
    vim.keymap.set("n", "<leader>?", builtin.keymaps, { desc = "Search keymaps" })
    vim.keymap.set("n", "<leader>d", builtin.diagnostics, { desc = "Search diagnostics" })
  end,
}
