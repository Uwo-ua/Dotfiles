
vim.cmd('packadd nvim-lsp')
require('setting')
require('plugins')
require('mapping')
require('treesitter')
require('lsp')
require('tabline')
-- Nvim Tree

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

require'alpha'.setup(require'alpha.themes.dashboard'.config)
require('lualine').setup()

require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})
require("luasnip.loaders.from_vscode").lazy_load()
vim.g.coq_settings = {
    keymap = {
        jump_to_mark = "", -- no jump_to_mark mapping
    },
    clients = {
        snippets = { enabled = false }, -- disable coq snippets
    },
}

