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

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

require('packer').startup(function(use)
    use("wbthomason/packer.nvim")
    -- functionality plugins
    use("tpope/vim-surround")
    use("tpope/vim-commentary")
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('nvim-treesitter/nvim-treesitter',{run=':TSUpdate'})
    use("theprimeagen/harpoon")
    -- appearance plugins
    use("shaunsingh/nord.nvim")
    use("itchyny/lightline.vim")
    use("ap/vim-css-color")
    use("folke/zen-mode.nvim")
    if packer_bootstrap then
		require("packer").sync()
	end
end)

