local cmd = vim.cmd -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local g = vim.g -- global variables
local opt = vim.opt

g.translate_source = 'ru'
g.translate_target = 'en'

g.tagbar_compact = 1
g.tagbar_sort = 0

cmd([[set mouse=a]])
cmd([[set noswapfile]])

opt.cursorline = true
opt.spelllang = { 'en_us', 'ru' }
opt.number = true
opt.undofile = true

opt.list = true
opt.listchars:append 'space:'
opt.listchars:append "eol:↴"

opt.termguicolors = true
cmd [[ set t_Co=256 ]]
--cmd'colorscheme github_dark_colorblind'

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

--    cmd[[
--     highlight MyGroup gui=bold
--     match MyGroup /./
--     ]]

cmd([[
filetype indent plugin on
syntax enable
]])
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

exec([[
augroup YankHighlight
autocmd!
autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup end
]], false)

g.neoformat_try_node_exe = 1

-- Neovide

cmd([[
    let g:neovide_cursor_animation_length=0
    
    ]])

g.astro_typescript = true

cmd([[
if exists('g:vscode')
    " VSCode extension
else
    " ordinary neovim
endif
]])


