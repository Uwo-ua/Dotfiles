local components = require("lvim.core.lualine.components")
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "tokyonight"
lvim.use_icons = true
lvim.builtin.bufferline.options.always_show_bufferline = false

vim.g.catppuccin_flavour = "macchiato"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.list = true
vim.opt.backup = false
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.termguicolors = true

vim.opt.title = true
vim.opt.titlestring = "%<%F%=%l/%L - nvim"


vim.opt.listchars:append 'space:'
vim.opt.listchars:append "eol:↴"

vim.cmd([[
  set t_ZH=^[[3m
  set t_ZR=^[[23m
  highlight Comment cterm=italic
]])

lvim.leader = "space"
lvim.keys.normal_mode["ft"] = ":Telescope find_files<cr>"
lvim.keys.normal_mode["lr"] = ":lua vim.lsp.buf.rename()<cr>"
lvim.keys.normal_mode["ld"] = ":lua vim.lsp.buf.hover()<cr>"
lvim.keys.normal_mode["lf"] = ":lua vim.lsp.buf.definition()<cr>"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = [[<c-\>]]

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.rainbow = {
  enable = true,
  extended_mode = true,
  max_file_lines = 1000,
}
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.indent.enable = true
lvim.builtin.treesitter.matchup.enable = true

lvim.lsp.installer.setup.ensure_installed = {
  "sumeko_lua",
  "jsonls",
}

lvim.lsp.installer.setup.automatic_installation = true

-- local formatters = require "lvim.lsp.null-ls.formatters"
-- formatters.setup {
--   {
--     command = "prettier",
--     extra_args = { "--print-with", "100" },
--     filetypes = { "javascript", "typescript", "typescriptreact" },
--   },
-- }


lvim.plugins = {
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim" },
  { "p00f/nvim-ts-rainbow" },
  { "windwp/nvim-ts-autotag" },
  { "SmiteshP/nvim-navic" },

}
lvim.builtin.lualine.sections.lualine_x = nil
lvim.builtin.lualine.sections.lualine_z = { "mode" }
