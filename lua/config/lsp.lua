require("mason").setup()
require("mason-lspconfig").setup({
  -- ensure_installed = { "gopls", "lua_ls" },
  ensure_installed = { "gopls" },
})
vim.lsp.config('gopls', {
  cmd = { 'gopls' },
  filetypes = { 'go' },
  root_markers = { '.git' },
  settings = {
    gopls = {
      hints = {
        rangeVariableTypes = true,
        parameterNames = true,
        constantValues = true,
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        functionTypeParameters = true,
      },
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    }
  }
})
vim.lsp.config('lua_ls', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.git' },
  settings = {
    Lua = {
      hint = { enable = true },
      runtime = { version = 'LuaJIT' },
      completion = { enable = true },
      diagnostics = {
        enable = true,
        globals = { 'vim' }
      },
      workspace = {
        library = { vim.env.VIMRUNTIME },
        checkThirdParty = false,
      },
    },
  },
})

vim.lsp.config('intelephense', {
  cmd = { 'intelephense', '--stdio' },
  filetypes = { 'php' },
  root_markers = { '.git', 'composer.json' },
})

vim.lsp.config('twiggy_language_server', {
  cmd = { 'twiggy-language-server', '--stdio' },
  filetypes = { 'twig' },
  root_markers = { '.git', 'composer.json' },
})

vim.lsp.enable('gopls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('intelephense')
vim.lsp.enable('twiggy_language_server')
