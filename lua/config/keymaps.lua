-- Shorten keymap function
local keymap = vim.api.nvim_set_keymap

-- Setup `mapleader`
vim.g.mapleader = " "

-- Keymaps
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {desc="Tree"})
keymap("n", "<leader>L", ":Lazy<CR>", {})
keymap("n", "<leader>q", ":q<CR>", {desc="Close window"})

-- Better buffer navigation
keymap("n", "<leader>bb", ":bp<CR>", {desc="Previous"})
keymap("n", "<leader>bn", ":bp<CR>", {desc="Next"})
