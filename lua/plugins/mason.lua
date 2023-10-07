return {
  'williamboman/mason.nvim',
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
    { "<leader>M", ":Mason<cr>", desc = "Mason", silent = true }
  }
}
