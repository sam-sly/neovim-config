return {
  'echasnovski/mini.files',
  version = false,
  cmd = 'MiniFiles',
  keys = { '<leader>e' },
  config = function ()
    local MiniFiles = require('mini.files')

    local toggle_explorer = function ()
      if not MiniFiles.close() then
        MiniFiles.open(vim.api.nvim_buf_get_name(0))
      end
    end

    local show_dotfiles = false

    local filter_show = function(fs_entry) return true end

    local filter_hide = function(fs_entry)
      return not (vim.startswith(fs_entry.name, '.') or vim.startswith(fs_entry.name, 'node_modules'))
    end

    local toggle_dotfiles = function()
      show_dotfiles = not show_dotfiles
      local new_filter = show_dotfiles and filter_show or filter_hide
      MiniFiles.refresh({ content = { filter = new_filter } })
    end

    -- Setup
    MiniFiles.setup({
      content = {
        filter = filter_hide,
      },
      windows = {
        preview = true,
        width_focus = 30,
        width_nofocus = 30,
        width_preview = 75,
      },
      mappings = {
        synchronize = '<leader>w',
        go_in_plus = '<cr>',
        go_out_plus = 'h',
        go_out = '',
        reveal_cwd = 'r',
      }
    })

    -- Mini.files keymaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>e', toggle_explorer, { desc = 'Toggle file explorer', silent = true })
    keymap.set('n', 'g.', toggle_dotfiles, { desc = 'Toggle dotfiles', silent = true })

    vim.api.nvim_create_autocmd('User', {
      pattern = 'MiniFilesBufferCreate',
      callback = function(args)
        local buf_id = args.data.buf_id
        -- Tweak left-hand side of mapping to your liking
        vim.keymap.set('n', 'g.', toggle_dotfiles, { buffer = buf_id })
      end,
    })
  end,
}
