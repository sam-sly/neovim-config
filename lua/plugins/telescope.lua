return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    -- Telescope Keymaps
    local keymap = vim.keymap
    local builtin = require('telescope.builtin')
    keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Find git files" })
    keymap.set('n', '<leader>fF', builtin.find_files, { desc = "Find files" })
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find grep string" })
    keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "Find string under cursor" })
  end
}
