return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  keys = {
    { "<Leader>nf", ":lua require('neogen').generate()<CR>", silent = true, desc = "Generate annotations" }
  },
  opts = {
    snippet_engine = 'luasnip',
  },
  config = true,
  -- Uncomment next line if you want to follow only stable versions
  -- version = "*" 
}
