
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        "javascript",
        "typescript",
        "rust",
        "html",
        "lua",
        "v",
        "css",
        "scss",
        "toml",
        "json",
        "astro",
        "vue",
        "yaml",
        "tsx",
    },
    refactor = {
        highlight_definitions = {
            enable = true,
        -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
        },
    }
}




