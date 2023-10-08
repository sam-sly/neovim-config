return {
  'nvim-lualine/lualine.nvim',
  opts = {
    theme = 'tokyonight-storm',
    options = { component_separators = { left = '', right = '' } },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {
        { 'diagnostics', sources = { 'nvim_lsp' } },
        { 'filetype', icon_only = true, padding = { left = 1, right = 0 } },
        { 'filename', symbols = {
          modified = "",
          newfile = "",
          readonly = "",
          unnamed = ""
        }},
      },
      lualine_c = {
        {
          function() return require("nvim-navic").get_location() end,
          cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
        }
      },
      lualine_x = {'diff'},
      lualine_y = {'branch'},
      lualine_z = {{ 'location', padding = { left = 0, right = 0.5 } }}
    },
    extensions = {
      'fugitive',
      'fzf',
      'lazy',
      'neo-tree',
      'trouble'
    }
  },
  config = true
}
