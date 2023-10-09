return {
  'echasnovski/mini.bufremove',
  version = false,
  keys = {
    { "<leader>X", ":bdelete<cr>", desc = "Close file without saving", silent = true },
    { "<leader>x", ":w<cr>:bd<cr>", desc = "Write file and close", silent = true },
    { "<leader>bc", ":w<cr>:bd<cr>", desc = "Write file and close", silent = true }
  }
}
