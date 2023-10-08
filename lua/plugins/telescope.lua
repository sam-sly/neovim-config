return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim'
  },
  keys = {
    { '<leader>ff', ':Telescope git_files<cr>', desc = "Find git files", silent = true },
    { '<leader>fF', ':Telescope find_files<cr>', desc = "Find files", silent = true },
    { '<leader><Space>', ':Telescope find_files<cr>', desc = "Find files", silent = true },
    { '<leader>fg', ':Telescope live_grep<cr>', desc = "Find grep string", silent = true },
    { '<leader>fs', ':Telescope grep_string<cr>', desc = "Find string under cursor", silent = true }
  },
  config = true
}
