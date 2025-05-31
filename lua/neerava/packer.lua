-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use "nvim-telescope/telescope-project.nvim"

    -- Theme
    use({
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    })

    use "olimorris/onedarkpro.nvim"
    use "sickill/vim-monokai"
    use({ 'rose-pine/neovim', as = 'rose-pine' })

    -- Syntax highlighting
    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use('nvim-treesitter/playground')

    -- harpoon :-D
    use("theprimeagen/harpoon")

    -- undotree
    use("mbbill/undotree")

    -- git stuff
    use("tpope/vim-fugitive")

    -- autosave file
    use("Pocco81/auto-save.nvim")

    -- nvim icons
    use("nvim-tree/nvim-web-devicons")

    -- file tree
    use('nvim-tree/nvim-tree.lua')

    -- status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- commenting
    use "terrortylor/nvim-comment"

    -- bufferline
    use "akinsho/bufferline.nvim"

    -- mason
    use { 'williamboman/mason.nvim' }           -- Optional
    use { 'williamboman/mason-lspconfig.nvim' } -- Optional
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },         -- Required
            { 'hrsh7th/cmp-nvim-lsp' },     -- Required
            { 'hrsh7th/cmp-buffer' },       -- Optional
            { 'hrsh7th/cmp-path' },         -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' },     -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' },             -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }

    -- Discord presence
    use "andweeb/presence.nvim"

    use('neovim/nvim-lspconfig')
    -- lspconfig
    use('jose-elias-alvarez/null-ls.nvim')

    -- prettier
    use('MunifTanjim/prettier.nvim')

    -- toggle diagnostics
    use "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim"

    -- popup terminal
    use "akinsho/toggleterm.nvim"

    -- Debugger
    use "mfussenegger/nvim-dap"
    use "rcarriga/nvim-dap-ui"
    use "theHamsta/nvim-dap-virtual-text"
    use "nvim-telescope/telescope-dap.nvim"
    use "nvim-neotest/nvim-nio"
    -- use({
    --     "jackMort/ChatGPT.nvim",
    --     requires = {
    --         "MunifTanjim/nui.nvim",
    --         "nvim-lua/plenary.nvim",
    --         "nvim-telescope/telescope.nvim"
    --     }
    -- })
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
end)
