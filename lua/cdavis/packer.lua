vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
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
    use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,}
        use('nvim-treesitter/playground')
        use('nvim-treesitter/nvim-treesitter-context')
        use('theprimeagen/harpoon')
        use('mbbill/undotree')
        use('tpope/vim-fugitive')
        use('github/copilot.vim')
        use('laytan/cloak.nvim')

        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',

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
