return {
  "nvim-treesitter/nvim-treesitter-context",
  after = "nvim-treesitter",
  requires = "nvim-treesitter/nvim-treesitter",
  config = function ()
    require("treesitter-context").setup({
      max_lines = 3,
    })

    vim.keymap.set("n", "[c", function()
      require("treesitter-context").go_to_context()
    end, { silent = true })

    vim.cmd('hi TreesitterContextBottom gui=underline guisp=Grey')
  end
}
