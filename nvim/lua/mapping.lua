---@diagnostic disable: undefined-global, unused-local
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = false }

map('i', 'qw', '<ESC>', default_opts)
map('i', 'wq', '<ESC>', default_opts)

map('n', 'lj', '<esc>:Lspsaga diagnostic_jump_prev<CR>', default_opts)
map('n', 'lf', '<esc>:Lspsaga code_action<CR>', default_opts)
map('n', 'ld', '<cmd>lua vim.lsp.buf.hover()<CR>', default_opts)
map('n', 'lr', '<cmd>lua vim.lsp.buf.rename()<CR>', default_opts)
map('n', 'lk', '<cmd>lua vim.lsp.buf.references()<CR>', default_opts)

map('v', '>', '>gv<esc>', default_opts)
map('v', '<', '<gv<esc>', default_opts)

map('n', 'fn', '<esc>:Telescope live_grep<CR>', default_opts)
map('n', 'fg', '<esc>:Telescope git_commits<CR>', default_opts)
map('n', 'ft', '<esc>:Telescope find_files<CR>', default_opts)
map('n', 'fe', '<cmd> Telescope diagnostics bufnr=0<CR>', default_opts)

map('n', '<F5>', ':BufferLineCycleNext<CR>', default_opts)
map('i', '<F5>', '<esc>:BufferLineCycleNext<CR>i', default_opts)

map('n', '<F4>', ':PackerInstall<CR>', default_opts)

map('n', '<F3>',
    ':so ~/.config/nvim/init.lua<CR>:so ~/.config/nvim/lua/plugins.lua<CR>:so ~/.config/nvim/lua/setting.lua<CR>:so ~/.config/nvim/lua/mapping.lua<CR>:so ~/.config/nvim/lua/lsp.lua<CR>:so ~/.config/nvim/lua/tabline.lua<CR>:so ~/.config/nvim/lua/treesitter.lua<CR>:so ~/.config/nvim/lua/autopairs.lua<CR>:so ~/.config/nvim/lua/navic.lua<CR>'
    , { noremap = true })
