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

-- Useful maps
keymap('n', '<leader>h', ':nohl<CR>', {noremap=true, silent=true, desc='Toggle hl'})
keymap('n', '<leader>c', ':bd<CR>', {noremap=true, silent=true, desc='Close buffer'})
keymap('n', '<leader>C', ':bd!<CR>', {noremap=true, silent=true, desc='Close buffer!'})
keymap('n', '<leader>w', ':w<CR>', {noremap=true, silent=true, desc='Save buffer'})
keymap('n', '<leader>q', ':q<CR>', {noremap=true, silent=true, desc='Close window'})
keymap('n', '<leader>ff', ':lua vim.lsp.buf.format()<CR>', {noremap=true, silent=true, desc='Format file'})

-- Better buffer navigation
keymap('n', '<leader>bb', '<Cmd>BufferLineCyclePrev<CR>', {noremap=true, silent=true, desc='Previous'})
keymap('n', '<leader>bn', '<Cmd>BufferLineCycleNext<CR>', {noremap=true, silent=true, desc='Next'})

-- Terminal
keymap("n", "<leader>T", ":terminal<CR>A", {desc="Terminal"})
keymap("n", "<leader>o", ":split | terminal<CR>A", {desc="Split Terminal"})
keymap("n", "<leader>O", ":vsplit | terminal<CR>A", {desc="Vsplit Terminal"})
keymap("t", "<Esc><Esc>", "<C-\\><C-n>", {})

-- Telescope
keymap('n', '<leader>td', ':Telescope diagnostics<CR><Esc>', {noremap=true, silent=true, desc='Diagnostics'})
keymap('n', '<leader>tb', ':Telescope buffers<CR><Esc>', {noremap=true, silent=true, desc='Find buffers'})
keymap('n', '<leader>tf', ':Telescope find_files<CR>', {noremap=true, silent=true, desc='Find files'})
keymap('n', '<leader>tg', ':Telescope live_grep<CR>', {noremap=true, silent=true, desc='Live grep'})
keymap('n', '<leader>tG', ':Telescope live_grep grep_open_files=true<CR>', {noremap=true, silent=true, desc='Live grep (open files)'})
keymap('n', '<leader>tS', ':Telescope grep_string<CR>', {noremap=true, silent=true, desc='Grep string'})
keymap('n', '<leader>ts', ':Telescope lsp_document_symbols<CR>', {noremap=true, silent=true, desc='Document Symbols'})
keymap('n', '<leader>tT', ':Telescope<CR>', {noremap=true, silent=true, desc='Telescope'})
