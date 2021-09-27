local ts = require("telescope")
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

-- Do the plain setup for Telescope
ts.setup({
  defaults = {
    prompt_prefix = ' >'
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    },
  },
})

-- Load Extsions for Telescope
ts.load_extension("fzy_native")

-- Extend telescope with own functionality
local M = {}

local function create_branch_conditionally(prompt_bufnr)
  print(prompt_bufnr)
end

M.git_branches = function()
    require("telescope.builtin").git_branches()
  end

return M
