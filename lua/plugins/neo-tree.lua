return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function()
    -- Neotree Keymaps
    local keymap = vim.keymap
    keymap.set("n", "<leader>e", ":Neotree toggle<cr>", { desc = "Open file explorer", silent = true })
  end
}
