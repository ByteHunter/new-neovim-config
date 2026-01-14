-- Get a list of options with `:help options`
local options = {
  autoread = true,
  cmdheight = 1,
  conceallevel = 0,
  cursorline = true,
  expandtab = true,
  fileencoding = "utf-8",
  encoding = "utf-8",
  hlsearch = true,
  ignorecase = true,
  number = true,
  numberwidth = 4,
  relativenumber = true,
  showtabline = 2,
  shiftwidth = 2,
  signcolumn = "yes",
  splitbelow = true,
  splitright = true,
  termguicolors = true,
  wrap = false,
  -- Show vertical column(s)
  colorcolumn = "120",
  -- Show characters at the end of the line
  list = true,
  listchars = "trail:-,eol:↩",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
