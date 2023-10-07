-- Keymaps
local keymap = vim.keymap

-- leader = <Space>
vim.g.mapleader = " "

-- split management
keymap.set("n", "<leader>sl", "<C-w>v", { desc = "Split window right" }) -- split window vertically
keymap.set("n", "<leader>sj", "<C-w>s", { desc = "Split window down" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sc", "<C-w>q", { desc = "Close current window" }) -- close current split window
keymap.set("n", "<leader>so", "<C-w>o", { desc = "Close all other windows" })

-- file management
keymap.set("n", "<leader>bw", ":w<cr>", { desc = "Write file", silent = true })
keymap.set("n", "<leader>bs", ":w<cr>:so<cr>", { desc = "Source file", silent = true })
keymap.set("n", "<leader>x", ":w<cr>:bd<cr>", { desc = "Write file and close", silent = true })
keymap.set("n", "<leader>X", ":bdelete<cr>", { desc = "Close file without saving", silent = true })
keymap.set("n", "<leader>bc", ":w<cr>:bd<cr>", { desc = "Write file and close", silent = true })
keymap.set("n", "<leader>bq", ":bd<cr>", { desc = "Close file without saving", silent = true })

-- visual mode: move selection
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- close neovim
keymap.set('n', '<leader>q', ':x<cr>', { desc = "Quit Neovim", silent = true })
