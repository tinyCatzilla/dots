local options = {
  ensure_installed = { "lua", "regex", "bash", "markdown", "markdown_inline" },

  highlight = {
    enable = true,
    disable = { "latex" },
    use_languagetree = true,
  },

  indent = { enable = true },
}

return options
