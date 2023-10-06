return {
  'christoomey/vim-tmux-navigator',
  config = function()
    local keymap = vim.keymap
    -- tmux navigator
    vim.g.tmux_navigator_no_mappings = 1
    keymap.set("n", "<C-h>", ":TmuxNavigateLeft<cr>", { silent = true })
    keymap.set("n", "<C-j>", ":TmuxNavigateDown<cr>", { silent = true })
    keymap.set("n", "<C-k>", ":TmuxNavigateUp<cr>", { silent = true })
    keymap.set("n", "<C-l>", ":TmuxNavigateRight<cr>", { silent = true })
  end
}
