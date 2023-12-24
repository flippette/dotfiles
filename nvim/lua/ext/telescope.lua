local M = {}

-- pickers
M.pickers = {}

-- project_files (git_files with find_files fallback)
local is_inside_work_tree = {}
M.pickers.project_files = function()
  local opts = {
    show_untracked = true
  }

  local cwd = vim.fn.getcwd()
  if is_inside_work_tree[cwd] == nil then
    vim.fn.system('git rev-parse --is-inside-work-tree')
    is_inside_work_tree[cwd] = vim.v.shell_error == 0
  end

  if is_inside_work_tree[cwd] then
    require('telescope.builtin').git_files(opts)
  else
    require('telescope.builtin').find_files(opts)
  end
end

return M
