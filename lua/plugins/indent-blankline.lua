return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = {
      show_end = false,
    },
  },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = true
}
