return {
  'Wansmer/treesj',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  keys = { '<leader>j' },
  config = function()
    require('treesj').setup({ use_default_keymaps = false })
    -- TreeSJ Keymaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>j', ':TSJToggle<cr>', { desc = "Toggle split/join block", silent = true })
  end
}
