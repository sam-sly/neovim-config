return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "<leader>e", ":Neotree toggle<cr>", desc = "Open file explorer", silent = true }
  },
  opts = {
    close_if_last_window = true,
    window = {
      mappings = {
        ["z"] = "expand_all_nodes",
        ["Z"] = "close_all_nodes",
        ["e"] = "open"
      }
    }
  }
}
