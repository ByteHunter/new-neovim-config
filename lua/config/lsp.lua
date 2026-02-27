require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "gopls", "lua_ls", "lua_ls" },
})
vim.lsp.config('gopls', {})
vim.lsp.config('lua_ls', {})

vim.lsp.enable('lua_ls')
