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
require("transparent").setup({ enable = true })

opt.cursorline = true
opt.spelllang = { 'en_us', 'ru' }
opt.number = true
opt.undofile = true

opt.list = true
opt.listchars:append "space:⋅"
opt.listchars:append "eol:↴"

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

opt.termguicolors = true
--cmd'colorscheme github_dark_colorblind'
require("github-theme").setup({
    theme_style = "dark_default",
    -- other config
})

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

-- Neovide

cmd([[
    let g:neovide_cursor_animation_length=0
    
    ]])

g.astro_typescript = true
