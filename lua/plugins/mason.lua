return {
  'williamboman/mason.nvim',
  dependencies = {
    'stevearc/dressing.nvim'
  },
  cmd = 'Mason',
  build = ':MasonUpdate',
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
      }
    }
  },
  config = true,
  keys = {
    { "<leader>m", ":Mason<cr>", desc = "Mason", silent = true }
  }
}
