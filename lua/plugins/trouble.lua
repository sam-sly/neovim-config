return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    mode = 'document_diagnostics',
    use_diagnostic_signs = true
  },
  config = true,
  keys = {
    { "<leader>d", function() require("trouble").open("document_diagnostics") end, desc = "Show buffer diagnostics (Trouble)" },
    { "<leader>tw", function() require("trouble").open("workspace_diagnostics") end, desc = "Trouble Workspace Diagnostics" },
    { "<leader>td", function() require("trouble").open("document_diagnostics") end, desc = "Trouble Document Diagnostics" },
    { "<leader>tq", function() require("trouble").open("quickfix") end, desc = "Trouble Quickfix" },
    { "<leader>tl", function() require("trouble").open("loclist") end, desc = "Trouble Location List" },
    { "gr", function() require("trouble").open("lsp_references") end, desc = "Trouble LSP References" }
 }
}
