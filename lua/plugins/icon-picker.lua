return {
  "ziontee113/icon-picker.nvim",
  dependencies = {
    'stevearc/dressing.nvim'
  },
  event = 'InsertEnter',
  keys = {
    { '<leader>fi', ':IconPickerNormal<cr>', desc = "Find icon/emoji", silent = true }
  },
  config = function()
    require("icon-picker").setup({
      disable_legacy_commands = true
    })

    -- Icon-Picker keymaps
    vim.keymap.set('i', '<C-e>', '<cmd>IconPickerInsert<cr>', { desc = 'Find icon/emoji', silent = true, noremap = true })
  end
}
