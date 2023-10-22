return {
  'christoomey/vim-tmux-navigator',
  keys = {
    { "<C-h>", ":TmuxNavigateLeft<cr>", silent = true },
    { "<C-j>", ":TmuxNavigateDown<cr>", silent = true },
    { "<C-k>", ":TmuxNavigateUp<cr>", silent = true },
    { "<C-l>", ":TmuxNavigateRight<cr>", silent = true },
  },
}
