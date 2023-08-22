require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"

vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.autochdir = true

-- -- Load custom tree-sitter grammar for org filetype
-- require('orgmode').setup_ts_grammar()
--
-- -- Tree-sitter configuration
-- require'nvim-treesitter.configs'.setup {
--   -- If TS highlights are not enabled at all, or disabled via ``disable`` prop, highlighting will fallback to default Vim syntax highlighting
--   highlight = {
--     enable = true,
--     disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
--     additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
--   },
--   ensure_installed = {'org'}, -- Or run :TSUpdate org
-- }
--
-- require('orgmode').setup({
--   org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
--   org_default_notes_file = '~/Dropbox/org/refile.org',
-- })
--


