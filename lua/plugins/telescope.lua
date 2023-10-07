return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'debugloop/telescope-undo.nvim'
  },
  config = function()
    local actions = require('telescope.actions')
    require('telescope').setup({
      defaults = {
        mappings = {
          n = {
            ["q"] = actions.close
          }
        }
      },
      extensions = {
        undo = {
          side_by_side = true,
          layout_strategy = "vertical",
          layout_config = {
            preview_height = 0.8
          }
        }
      }
    })

    -- Telescope Undo
    require('telescope').load_extension('undo')

    -- Telescope Keymaps
    local keymap = vim.keymap
    local builtin = require('telescope.builtin')
    keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Find git files" })
    keymap.set('n', '<leader>fF', builtin.find_files, { desc = "Find files" })
    keymap.set('n', '<leader><Space>', builtin.find_files, { desc = "Find files" })
    keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Find grep string" })
    keymap.set('n', '<leader>fs', builtin.grep_string, { desc = "Find string under cursor" })
    keymap.set('n', '<leader>u', ':Telescope undo<cr>', { desc = "Undo tree", silent = true })
  end
}
