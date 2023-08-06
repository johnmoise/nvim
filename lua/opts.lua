-- ~/.config/nvim/lua/opts.lua

local opt = vim.opt

-- LINE NUMBERS AND SCROLL
opt.number = true
opt.relativenumber = true
opt.scrolloff = 8

-- WHITESPACE
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
opt.textwidth = 80

-- SEARCH
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false

-- FILETYPE ENCODING
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'

-- SYSTEM CLIPBOARD
opt.clipboard:append("unnamedplus")

-- SPLITS
opt.splitright = true
opt.splitbelow = true

-- COLORSCHEME WITH NORD + TRANSPARENT BACKGROUND
vim.cmd([[colorscheme nord]])
vim.api.nvim_set_hl(0,"Normal",{bg="none"})
vim.api.nvim_set_hl(0,"NormalFloat",{bg="none"})

-- STATUS BAR WITH LIGHTLINE
vim.cmd([[let g:lightline = {'colorscheme': 'wombat' }]])
opt.showmode = false

-- SYNTAX HIGHLIGHTING WITH TREESITTER
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "rust"},
  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
}



