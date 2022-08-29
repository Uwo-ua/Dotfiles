
vim.api.nvim_exec([[
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd BufRead,BufNewFile *.md setlocal spell
]], true)
local lspconfig = require('lspconfig')
local protocol  = require('vim.lsp.protocol')
local util = require "lspconfig".util
local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

vim.g.coq_settings = { auto_start = 'shut-up' }

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
end

local servers = { 'clangd', 'rust_analyzer', 'vls', 'marksman', 'astro' , 'html', "cssls", 'tsserver', 'sumneko_lua', 'pyright'}
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
        on_attach = on_attach,
    }))
end
lspconfig.tsserver.setup{
    cmd = { "typescript-language-server", "--stdio" },
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")     -- run lsp for javascript in any directory

}

require'lspconfig'.astro.setup{
    cmd = { "astro-ls", "--stdio" },
    filetypes = { "astro" },
    root_dir = util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git"),
}


lspconfig.rust_analyzer.setup{
    cmd = { "rust-analyzer" },
    root_dir = util.root_pattern("Cargo.toml", "rust-project.json"),
}

local saga = require("lspsaga")

saga.init_lsp_saga {
    error_sign = "⌀",
    warn_sign = "",
    hint_sign = "",
    infor_sign = "",
    border_style = "round";
}




