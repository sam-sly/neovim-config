return {
  'nvim-lualine/lualine.nvim',
  opts = {
    theme = 'tokyonight-storm',
    component_separators = '',
    section_separators = '',
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
        { 'filetype', icon_only = true },
        'filename'
      },
      lualine_c = {
        { 'diagnostics', sources = { 'nvim_diagnostic', 'nvim_lsp', 'vim_lsp' } }
      },
      lualine_x = {'diff'},
      lualine_y = {'branch'},
      lualine_z = {'location'}
    },
    extensions = {
      'fugitive',
      'fzf',
      'lazy',
      'neo-tree',
      'trouble'
    }
  }
}
