local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require("lazy").setup("plugins", {})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- Enable line numbers
vim.opt.number = true
vim.cmd("syntax enable")

vim.cmd("filetype plugin indent on")

-- Set indentation to 4 spaces
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Use spaces instead of tabs

vim.keymap.set("n", "j", "h", { noremap = true })
vim.keymap.set("n", "k", "j", { noremap = true })
vim.keymap.set("n", "i", "k", { noremap = true })
vim.keymap.set("n", "o", "i", { noremap = true })

vim.keymap.set("v", "j", "h", { noremap = true })
vim.keymap.set("v", "k", "j", { noremap = true })
vim.keymap.set("v", "i", "k", { noremap = true })
vim.keymap.set("v", "o", "i", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:w<CR>a", { noremap = true, silent = true })
