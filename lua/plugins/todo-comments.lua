return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('todo-comments').setup()
    -- Todo Keymaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>ft', ':TodoTelescope<cr>', { desc = 'Find todos', silent = true })
  end
}
