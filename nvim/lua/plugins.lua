
vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'jiangmiao/auto-pairs'
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lsp'
    use { 'ms-jpq/coq_nvim', run = 'python3 -m coq deps' }
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    use 'kkharji/lspsaga.nvim'
    use 'goolord/alpha-nvim'  
    use 'akinsho/toggleterm.nvim'
    use 'gbrlsnchs/telescope-lsp-handlers.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'
    use 'majutsushi/tagbar'
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use 'xiyaowong/nvim-transparent'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use { 'p00f/nvim-ts-rainbow' }
    use { 'lukas-reineke/indent-blankline.nvim' }
    use { 'JoosepAlviste/nvim-ts-context-commentstring' }
    use { 'lewis6991/nvim-treesitter-context' }
    use 'wuelnerdotexe/vim-astro'
    use { 'SmiteshP/nvim-gps' }
    use 'projekt0n/github-nvim-theme'
    use 'mattn/emmet-vim'
    use {'akinsho/bufferline.nvim', tag = "v2.*"}
    use 'nvim-lua/plenary.nvim'
    use 'zakuro9715/vim-vtools'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}
    use "numToStr/FTerm.nvim"
    use 'Chiel92/vim-autoformat'
    use 'ap/vim-css-color'
    use {'iamcco/markdown-preview.nvim'}
end)



