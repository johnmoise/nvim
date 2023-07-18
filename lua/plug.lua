-- ~/.config/nvim/lua/plug.lua

-- auto install packer if not installed
local ensure_packer = function() 
    local fn = vim.fn 
    local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim" 
    if fn.empty(fn.glob(install_path)) > 0 then 
        fn.system({ "git","clone", "--depth", "1",
        "https://github.com/wbthomason/packer.nvim",install_path})
        vim.cmd([[packadd packer.nvim]]) 
        return true 
    end 
    return false 
end 

local packer_bootstrap = ensure_packer() 

-- autocommand that reloads neovim and installs/updates/removes
-- plugins when file is saved
vim.cmd([[ 
augroup packer_user_config 
autocmd! 
autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
augroup end 
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use("itchyny/lightline.vim")
    use("morhetz/gruvbox")
    if packer_bootstrap then
		require("packer").sync()
	end
end)

-- plugin settings
vim.cmd([[colorscheme gruvbox]])
vim.g.surround_36 = "$$\r$$" -- double $ on surround for mathjax