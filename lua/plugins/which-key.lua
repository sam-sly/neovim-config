return {
  "folke/which-key.nvim",
  dependencies = {
    'echasnovski/mini.icons', version = false
  },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require('which-key')
    wk.add({
      { '<leader>f', group = 'find' },
      { '<leader>s', group = 'split' },
      { '<leader>b', group = 'buffer' },
      { '<leader>q', group = 'quit' },
      { '<leader>w', group = 'workspace' },
      { '<leader>c', group = 'code' },
      { '<leader>r', group = 'rename/restart' },
      { '<leader>t', group = 'trouble' }
    }, { prefix = '<leader>' })
  end
}

