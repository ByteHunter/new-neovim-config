-- Shorten keymap function
local keymap = vim.api.nvim_set_keymap

-- Setup `mapleader`
vim.g.mapleader = " "

-- Keymaps
keymap("n", "<leader>e", ":Lexplore 20<CR>", {})
keymap("n", "<leader>L", ":Lazy<CR>", {})
