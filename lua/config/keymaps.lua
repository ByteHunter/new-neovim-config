-- Shorten keymap function
local keymap = vim.api.nvim_set_keymap

-- Setup `mapleader`
vim.g.mapleader = " "

-- Keymaps
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", {desc="Tree"})
keymap("n", "<leader>L", ":Lazy<CR>", {})
keymap("n", "<leader>q", ":q<CR>", {desc="Close window"})

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", {})
keymap("n", "<C-j>", "<C-w>j", {})
keymap("n", "<C-k>", "<C-w>k", {})
keymap("n", "<C-l>", "<C-w>l", {})

-- Better buffer navigation
keymap("n", "<leader>bb", ":bp<CR>", {desc="Previous"})
keymap("n", "<leader>bn", ":bp<CR>", {desc="Next"})

-- Terminal
keymap("n", "<leader>T", ":terminal<CR>A", {desc="Terminal"})
keymap("n", "<leader>o", ":split | terminal<CR>A", {desc="Split Terminal"})
keymap("n", "<leader>O", ":vsplit | terminal<CR>A", {desc="Vsplit Terminal"})
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", {})
