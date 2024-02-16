function ColorMyPencils(color) 
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    { 
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
                transparent = true, -- Enable this to disable setting the background color
                terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
                styles = {
                    -- Style to be applied to different syntax groups
                    -- Value is any valid attr-list value for `:help nvim_set_hl`
                    comments = { italic = false },
                    keywords = { italic = false },
                    -- Background styles. Can be "dark", "transparent" or "normal"
                    sidebars = "dark", -- style for sidebars, see below
                    floats = "dark", -- style for floating windows
                },
            })
        end
    },
    --[[
    {
        "sainnhe/gruvbox-material",
        name = "gruvbox-material",
        config = function()
            vim.o.background = "dark"
            vim.g.gruvbox_material_better_performance = true
            vim.g.gruvbox_material_background = 'hard'
            vim.g.gruvbox_material_foreground = 'material'
            vim.g.gruvbox_material_enable_bold = true
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_transparent_background = 0
            vim.cmd('colorscheme gruvbox-material')
        end
    },
--]]
    {
        "rose-pine/neovim",
        name = "rose pine",
        config = function()
            vim.cmd("colorscheme rose-pine")
            require("rose-pine").setup({
                disable_background = true
            })
            ColorMyPencils()
        end
    },
}

--[[
rebelot/kanagawa.nvim
kanagawa-wave  kanagawa-dragon kanagawa-lotus
rose-pine/neovim
sainnhe/everforest  gruvbox-material
morhetz/gruvbox  ellisonleo/gruvbox.nvim
--]]

