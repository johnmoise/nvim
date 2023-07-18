-- ~/.config/nvim/lua/keys.lua

local map = vim.api.nvim_set_keymap
-- LEADER
vim.g.mapleader = ","
-- KEYMAPS
map('i','jk','<ESC>',{}) -- quickly leave insert mode
