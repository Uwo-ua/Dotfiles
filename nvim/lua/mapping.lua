local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }


map('i', '<C-x>', '<esc>:Lspsaga diagnostic_jump_next<CR>', default_opts)
map('i', '<C-d>', '<esc>:Lspsaga signature_help<CR>', default_opts)

map('n', 'fn', '<esc>:Telescope live_grep<CR>', default_opts)
map('n', 'fg', '<esc>:Telescope git_commits<CR>', default_opts)

map('i', '<C-s>', '<esc>:Autoformat<CR>:w<CR>', default_opts)
map('n', '<F5>', ':BufferLineCycleNext<CR>', default_opts)

map('n', '<Space>', '<PageDown> zz', default_opts)

map('n', '<F4>', ':PackerInstall<CR>', default_opts)

map('n', 'ft', '<esc>:Telescope find_files<CR>', default_opts)
map('n', '<F6>', ':lua require("FTerm").toggle()<CR>', default_opts)


map('n', '<F3>',
    ':so ~/.config/nvim/init.lua<CR>:so ~/.config/nvim/lua/plugins.lua<CR>:so ~/.config/nvim/lua/setting.lua<CR>:so ~/.config/nvim/lua/mapping.lua<CR>:so ~/.config/nvim/lua/lsp.lua<CR>:so ~/.config/nvim/lua/tabline.lua<CR>:so ~/.config/nvim/lua/treesitter.lua<CR>:so ~/.config/nvim/lua/autopairs.lua<CR>:so ~/.config/nvim/lua/navic.lua<CR>:so ~/.config/nvim/lua/comment.lua<CR>'
    , { noremap = true })
