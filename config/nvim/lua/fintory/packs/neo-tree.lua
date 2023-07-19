return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require('neo-tree').setup();

    vim.keymap.set('n', '<Leader>ee', '<cmd>Neotree reveal<CR>', { noremap = true, silent = true })
  end
}
