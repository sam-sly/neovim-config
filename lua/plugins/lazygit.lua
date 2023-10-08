return {
  "kdheepak/lazygit.nvim",
  -- optional for floating window border decoration
  dependencies = {
    "nvim-lua/plenary.nvim",
    "tpope/vim-fugitive"
  },
  keys = {
    { '<leader>g', ':LazyGit<cr>', desc = "LazyGit" }
  }
}
