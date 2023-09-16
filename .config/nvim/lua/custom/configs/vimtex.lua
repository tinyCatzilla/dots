vim.g['tex_flavor']='latex'
vim.g['vimtex_view_method'] = 'skim'
vim.g['vimtex_view_skim_sync'] = 1
vim.g['vimtex_view_skim_activate'] = 1
vim.g['vimtex_compiler_latexmk'] = {
  aux_dir = 'aux',
  callback = 1,
  continuous = 1,
  executable = 'latexmk',
 }
vim.g['vimtex_mappings_enabled'] = 0
vim.g['vimtex_indent_enabled'] = 0
vim.g['vimtex_quickfix_mode'] =0
vim.g['vimtex_syntax_enabled'] = 1
vim.g['vimtex_syntax_conceal_disable'] = 1

vim.g['vimtex_log_ignore'] = ({
  'Underfull',
  'Overfull',
  'specifier changed to',
  'Token not allowed in a PDF string',
})
