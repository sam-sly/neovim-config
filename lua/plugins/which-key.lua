return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require('which-key')
    wk.register({
      f = { name = 'find' },
      s = { name = 'split' },
      b = { name = 'buffer' },
      q = { name = 'quit' },
      w = { name = 'workspace' },
      c = { name = 'code' },
      r = { name = 'rename/restart' },
      t = { name = 'trouble' }
    }, { prefix = '<leader>' })
  end
}

