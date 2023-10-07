return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  opts = {
    integrations = {
      alpha = true,
      cmp = true,
      gitsigns = true,
      indent_blankline = { enabled = true },
      mason = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true, custom_bg = "lualine" },
      neotree = true,
      telescope = true,
      treesitter = true,
      which_key = true,
    },
  },
}
