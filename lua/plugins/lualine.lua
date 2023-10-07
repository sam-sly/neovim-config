return {
  'nvim-lualine/lualine.nvim',
  opts = {
    theme = 'tokyonight-storm',
    component_separators = ' ',
    section_separators = ' ',
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
        { 'diagnostics', sources = { 'nvim_diagnostic', 'nvim_lsp', 'vim_lsp' } }
      },
      lualine_c = {
        {
          function() return require("nvim-navic").get_location() end,
          cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
        }
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
