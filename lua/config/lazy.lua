-- Lazy.nvim

-- bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- import plugins specs and options
require("lazy").setup("plugins")

-- lazy keymaps
local keymap = vim.keymap
keymap.set("n", "<leader>l", ":Lazy<cr>", { desc = "Lazy", silent = true })
