return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      textobjects = {
        move = {
          enable = true,
          goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer" },
          goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer" },
          goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer" },
          goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer" },
        },
      },
      ensure_installed = {
        'bash',
        'c',
        'lua',
        'luadoc',
        'luap',
        'vim',
        'vimdoc',
        'query',
        'html',
        'javascript',
        'json',
        'jsdoc',
        'typescript',
        'regex',
        'python',
        'markdown',
        'markdown_inline'
      },
      auto_install = true
    }
  }
