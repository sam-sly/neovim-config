return {
  "lukas-reineke/indent-blankline.nvim",
  event = "BufEnter",
  main = "ibl",
  opts = {
    indent = {
      char = "│",
      tab_char = "│",
    },
    scope = {
      enabled = false,
    },
  },
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = true
}
