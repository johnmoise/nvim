-- ~/.config/nvim/lua/keys.lua

local map = vim.api.nvim_set_keymap

-- LEADER
vim.g.mapleader = ","

-- KEYMAPS
map('n',';',':',{ noremap = true})                  -- faster command mode
map('n','<leader>w',':w<CR>',{ noremap = true})     -- faster file write
map('n','<leader>o',"o<ESC>'[k",{ noremap = true})  -- add (count) lines below
map('n','<leader>O',"O<ESC>j",{ noremap = true})    -- add (count) lines above
map('n','<leader>d','"_d',{ noremap = true})        -- delete without yank
map('n','<C-l>','<C-w>l',{ noremap = true})         -- faster split motion
map('n','<C-h>','<C-w>h',{ noremap = true})         -- faster split motion
map('n','<C-j>','<C-w>j',{ noremap = true})         -- faster split motion
map('n','<C-k>','<C-w>k',{ noremap = true})         -- faster split motion
map('n','H','^',{ noremap = true})                  -- faster motion to line start
map('n','L','g_',{ noremap = true})                 -- faster motion to line end
map('n','Q','@q',{ noremap = true})                 -- faster execution for temporary macros
map('n','J','mzJ`z',{ noremap = true})              -- append lines without moving cursor
map('n','n','nzzzv',{ noremap = true})              -- cycle matches without moving cursor
map('n','N','Nzzzv',{ noremap = true})              -- cycle matches without moving cursor
map('n','<up>','<nop>',{ noremap = true})           -- disable arrow keys
map('n','<down>','<nop>',{ noremap = true})         -- disable arrow keys 
map('n','<left>','<nop>',{ noremap = true})         -- disable arrow keys 
map('n','<right>','<nop>',{ noremap = true})        -- disable arrow keys 

map('i','jk','<ESC>',{noremap = true})          -- quickly leave insert mode
map('i','<up>','<nop>',{ noremap = true})       -- disable arrow keys
map('i','<down>','<nop>',{ noremap = true})     -- disable arrow keys 
map('i','<left>','<nop>',{ noremap = true})     -- disable arrow keys 
map('i','<right>','<nop>',{ noremap = true})    -- disable arrow keys 

map('v','<leader>p','"0p',{ noremap = true})        -- paste below without yank
map('v','<leader>P','"0P',{ noremap = true})        -- paste above without yank
map('v','H','^',{ noremap = true})                  -- faster motion to line start
map('v','L','g_',{ noremap = true})                 -- faster motion to line end
map('v','J',":m '>+1<CR>gv=gv",{ noremap = true })  -- block movement in visual mode
map('v','K',":m '<-2<CR>gv=gv",{ noremap = true})   -- block movement in visual mode

-- TELESCOPE
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ft', builtin.treesitter, {})

-- VIMSURROUND
vim.g.surround_36 = "$$\r$$" -- double $ on surround for mathjax

-- HARPOON
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n","<leader>a",mark.add_file)
vim.keymap.set("n","<leader>e",ui.toggle_quick_menu)
vim.keymap.set("n","<leader>1",function() ui.nav_file(1) end)
vim.keymap.set("n","<leader>2",function() ui.nav_file(2) end)
vim.keymap.set("n","<leader>3",function() ui.nav_file(3) end)
vim.keymap.set("n","<leader>4",function() ui.nav_file(4) end)
vim.keymap.set("n","<leader>5",function() ui.nav_file(5) end)
vim.keymap.set("n","<leader>6",function() ui.nav_file(6) end)
vim.keymap.set("n","<leader>7",function() ui.nav_file(7) end)
vim.keymap.set("n","<leader>8",function() ui.nav_file(8) end)
vim.keymap.set("n","<leader>9",function() ui.nav_file(9) end)
