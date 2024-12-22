return {
    -- Telescope
    {'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = {'nvim-lua/plenary.nvim'}},

    -- Neotree
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons',
            'MunifTanjim/nui.nvim',    
        }
    },

    -- LSP & Autocomplete
    {'neovim/nvim-lspconfig'},
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'saadparwaiz1/cmp_luasnip',
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets'
        }
    },
    {'stevearc/conform.nvim', opts={}},
    {'jose-elias-alvarez/null-ls.nvim', dependencies = { 'nvim-lua/plenary.nvim' }},

    -- Syntax Highlighting
    {
        'nvim-treesitter/nvim-treesitter', 
        build = ':TSUpdate',
        event = {'BufReadPre', 'BufNewFile'},
        dependencies = {'windwp/nvim-ts-autotag'}
    },
    {'tpope/vim-dotenv'},

    -- Git Integration
    {'tpope/vim-fugitive'},
    {'lewis6991/gitsigns.nvim'},

    -- Snippets
    {'rafamadriz/friendly-snippets'}
}
