return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},

    {
        "sainnhe/gruvbox-material",
        name = "gruvbox-material",
        config = function()
            vim.g.gruvbox_material_better_performance = true
            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_enable_bold = true
            vim.g.gruvbox_material_enable_italic = true
            vim.o.background = "dark"
            vim.cmd('colorscheme gruvbox-material')
        end
    },

    {
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
    },

    'theprimeagen/harpoon',
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'github/copilot.vim',
    'laytan/cloak.nvim',

}
