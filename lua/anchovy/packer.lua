-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
            }
        end


    })
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/playground")
    use("nvim-tree/nvim-tree.lua")
    use("sphamba/smear-cursor.nvim")
    use("craftzdog/solarized-osaka.nvim")
    use("mbbill/undotree")
    use("iruzo/matrix-nvim")
    use("tpope/vim-fugitive")
    use("bluz71/vim-moonfly-colors")
    use("tiagovla/tokyodark.nvim")
    use("rose-pine/neovim")
    use("iamcco/markdown-preview.nvim")
    use("lewis6991/gitsigns.nvim")
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x',
            requires = {
                -- LSP Support
                { 'neovim/nvim-lspconfig' },
                { 'williamboman/mason.nvim' },
                { 'williamboman/mason-lspconfig.nvim' },

                -- Autocompletion
                { 'hrsh7th/nvim-cmp' },
                { 'hrsh7th/cmp-buffer' },
                { 'hrsh7th/cmp-path' },
                { 'saadparwaiz1/cmp_luasnip' },
                { 'hrsh7th/cmp-nvim-lsp' },
                { 'hrsh7th/cmp-nvim-lua' },

                -- Snippets
                { 'L3MON4D3/LuaSnip' },
                { 'rafamadriz/friendly-snippets' },
            }
        }
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        use("folke/zen-mode.nvim")
        use("xiyaowong/transparent.nvim")
        use("eandrju/cellular-automaton.nvim")
        use 'ray-x/go.nvim'
        use 'ray-x/guihua.lua' -- recommended if need floating window support
        use 'neovim/nvim-lspconfig'
        use 'mfussenegger/nvim-dap'
        use({
         'MeanderingProgrammer/render-markdown.nvim',
        after = { 'nvim-treesitter' },
        --requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    })
        use {
       'goolord/alpha-nvim',
         requires = { 'echasnovski/mini.icons' },
         config = function ()
             require'alpha'.setup(require'alpha.themes.startify'.config)
     end
    }


    end)
