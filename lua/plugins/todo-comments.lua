return {
  'folke/todo-comments.nvim',
  event = 'InsertEnter',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<leader>ft', ':TodoTelescope<cr>', desc = 'Find todo comments' },
    { ']t', function() require('todo-comments').jump_next() end, desc = "Next todo comment" },
    { '[t', function() require('todo-comments').jump_prev() end, desc = "Previous todo comment" }
  },
  config = true
}
