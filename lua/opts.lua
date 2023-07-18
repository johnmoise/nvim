-- ~/.config/nvim/lua/opts.lua

local opt = vim.opt
-- CONTEXT
opt.number = true
opt.relativenumber = true
opt.scrolloff = 4
-- FILETYPES
opt.encoding = 'utf8'
opt.fileencoding = 'utf8'
-- THEME
opt.syntax = "ON"
-- SYSTEM CLIPBOARD
opt.clipboard:append("unnamedplus")
-- SEARCH
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.hlsearch = false
-- WHITESPACE
opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4
-- SPLITS
opt.splitright = true
opt.splitbelow = true
-- VISUAL
opt.cursorline = true
opt.textwidth = 80
opt.colorcolumn = "+1"
