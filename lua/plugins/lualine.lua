return {
  'nvim-lualine/lualine.nvim',
  event = 'BufEnter',
  opts = {
    theme = 'tokyonight-storm',
    options = { component_separators = { left = '', right = '' } },
    sections = {
      lualine_a = {
        'mode',
      },
      lualine_b = {
        { 'location', padding = { left = 1, right = 1 } },
      },
      lualine_c = {
        { 'diagnostics', sources = { 'nvim_lsp' } },
      },
      lualine_x = {
        'diff',
      },
      lualine_y = {
        { 'filetype', icon_only = true, padding = { left = 1, right = 0 } },
        { 'filename', file_status = false, symbols = { modified = "", newfile = "", readonly = "", unnamed = "" }, },
      },
      lualine_z = {
        'branch',
      }
    },
    extensions = {
      'fugitive',
      'fzf',
      'lazy',
      'trouble',
    }
  },
  config = true
}
