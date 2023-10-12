vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
<<<<<<< HEAD
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
=======
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
>>>>>>> fd08e7fff79b5ed751b58ab05097fc03a12f9cdd
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'sainnhe/gruvbox-material',
	  config = function()
		  vim.cmd('colorscheme gruvbox-material')
	  end
  })
  --[[
  rebelot/kanagawa.nvim
  kanagawa-wave  kanagawa-dragon kanagawa-lotus
  rose-pine/neovim
  sainnhe/everforest  gruvbox-material
  morhetz/gruvbox  ellisonleo/gruvbox.nvim
  ]]--
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
<<<<<<< HEAD
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
=======

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
>>>>>>> fd08e7fff79b5ed751b58ab05097fc03a12f9cdd
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
end)
