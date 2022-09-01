vim.cmd [[packadd packer.nvim]]

return require('packer').startup({ function(use)
    use 'jiangmiao/auto-pairs'
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lsp'
    use "ray-x/lsp_signature.nvim"
    use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    use 'kkharji/lspsaga.nvim'
    use 'folke/lsp-colors.nvim'
    use 'goolord/alpha-nvim'
    use 'akinsho/toggleterm.nvim'
    use 'gbrlsnchs/telescope-lsp-handlers.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'majutsushi/tagbar'
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use 'xiyaowong/nvim-transparent'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use 'nvim-treesitter/playground'
    use { 'p00f/nvim-ts-rainbow' }
    use "folke/twilight.nvim"
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }
    use { 'lewis6991/nvim-treesitter-context' }
    use 'wuelnerdotexe/vim-astro'
    use 'projekt0n/github-nvim-theme'
    use "rafamadriz/friendly-snippets"
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'L3MON4D3/LuaSnip'
    use { 'mendes-davi/coq_luasnip' }
    use 'mattn/emmet-vim'
    use 'navarasu/onedark.nvim'
    use { 'akinsho/bufferline.nvim', tag = "v2.*" }
    use 'nvim-lua/plenary.nvim'
    use 'zakuro9715/vim-vtools'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
    use 'brenoprata10/nvim-highlight-colors'
    use 'numToStr/Comment.nvim'
    use 'feline-nvim/feline.nvim'
    use 'SmiteshP/nvim-navic'
    use 'jose-elias-alvarez/null-ls.nvim'
    use "lukas-reineke/lsp-format.nvim"
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use { 'iamcco/markdown-preview.nvim' }
end,
    config = {
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    } })
