vim.cmd('packadd nvim-lsp')
require('setting')
require('plugins')
require('mapping')
require('treesitter')
require('lsp')
require('navic')
require('tabline')
require('autopairs')
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

require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
local navic = require("nvim-navic")
require('lualine').setup({
    sections = {
        lualine_c = {
            { navic.get_location, cond = navic.is_available },
        }
    }
})

require("toggleterm").setup {
    open_mapping = [[<c-\>]],
    direction = 'horizontal',
    shade_terminals = true,
    shading_factor = '1',
    start_in_insert = true,
    persist_size = true,
}

local actions = require('telescope.actions')
local telescope = require('telescope')
telescope.setup {
    defaults = {
        layout_config = {
            prompt_position = "top",
            horizontal = { mirror = false },
            vertical = { mirror = false }
        },
        find_command = {
            'rg', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case'
        },
        prompt_prefix = "  ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "descending",
        layout_strategy = "horizontal",
        file_sorter = require 'telescope.sorters'.get_fuzzy_file,
        file_ignore_patterns = {},
        generic_sorter = require 'telescope.sorters'.get_generic_fuzzy_sorter,
        path_display = {},
        winblend = 0,
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        color_devicons = true,
        use_less = true,
        set_env = { ['COLORTERM'] = 'truecolor' }, -- default = nil,
        file_previewer = require 'telescope.previewers'.vim_buffer_cat.new,
        grep_previewer = require 'telescope.previewers'.vim_buffer_vimgrep.new,
        qflist_previewer = require 'telescope.previewers'.vim_buffer_qflist.new,
        buffer_previewer_maker = require 'telescope.previewers'.buffer_previewer_maker,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist
            }
        },
    }
}

require("luasnip.loaders.from_vscode").lazy_load()

require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.completion.spell,
    },
    debug = true,
})
