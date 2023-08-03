-- ~/.config/nvim/lua/keys.lua

local map = vim.api.nvim_set_keymap
-- LEADER
vim.g.mapleader = ","
-- KEYMAPS
map('i','jk','<ESC>',{}) -- quickly leave insert mode
-- map('i','<TAB>','pumvisible() ? "<C-y>" : "<TAB>"',{ noremap = true, expr = true }) -- allow for tab autocompletion
map('n','<up>','<nop>',{ noremap = true}) -- allow for tab autocompletion
map('n','<down>','<nop>',{ noremap = true}) -- allow for tab autocompletion
map('n','<left>','<nop>',{ noremap = true}) -- allow for tab autocompletion
map('n','<right>','<nop>',{ noremap = true}) -- allow for tab autocompletion
-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

