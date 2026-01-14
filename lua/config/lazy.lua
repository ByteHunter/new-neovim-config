-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") ..  "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Adding my plugins here
    { "folke/which-key.nvim", lazy = false },
    { "nvim-tree/nvim-tree.lua", lazy = false },
    { "nvim-treesitter/nvim-treesitter", lazy = false },
    {
      "mason-org/mason.nvim",
      opts = {},
    },
    { "mason-org/mason-lspconfig.nvim" },
  },
  -- Colorscheme when installing plugins
  install = { colorscheme = { "habamax" } },
  -- Disabling auto updater
  checker = { enabled = false },
})

require("nvim-tree").setup()
require("mason").setup()
require("mason-lspconfig").setup()
