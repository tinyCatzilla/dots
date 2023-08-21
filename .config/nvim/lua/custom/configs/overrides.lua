local M = {}

M.devicons = {
  override_by_filename = {
    ["makefile"] = {
      icon = "",
      color = "#f1502f",
      name = "Makefile",
    },
    ["mod"] = {
      icon = "󰟓",
      color = "#519aba",
      name = "Mod",
    },
    ["sum"] = {
      icon = "󰟓",
      color = "#cbcb40",
      cterm_color = "185",
      name = "Sum",
    },
    [".gitignore"] = {
      icon = "",
      color = "#e24329",
      cterm_color = "196",
      name = "GitIgnore",
    },
    ["js"] = {
      icon = "",
      color = "#cbcb41",
      cterm_color = "185",
      name = "Js",
    },
    ["lock"] = {
      icon = "",
      color = "#bbbbbb",
      cterm_color = "250",
      name = "Lock",
    },
    ["package.json"] = {
      icon = "",
      color = "#e8274b",
      name = "PackageJson",
    },
    [".eslintignore"] = {
      icon = "󰱺",
      color = "#e8274b",
      name = "EslintIgnore",
    },
    ["tags"] = {
      icon = "",
      color = "#bbbbbb",
      cterm_color = "250",
      name = "Tags",
    },
    ["http"] = {
      icon = "󰖟",
      color = "#519aba",
      name = "Http",
    },
  },
}

M.treesitter = {
  auto_install = true,
  ensure_installed = {
    "vim",
    "lua",
    "bash",
    "json",
    "json5",
    "jq",
    "yaml",
    "java",
    "regex",
    "toml",

    -- Markdown
    "markdown",
    "markdown_inline",

    -- Web Dev
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",

    -- rae langs 
    "r",
    "latex",
    "rust",
  },
  indent = {
    enable = true,
  },
  playground = {
    enable = true,
  },
  tree_setter = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  autotag = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "eslint-lsp",

    -- Spell
    "codespell",
    "marksman",
    "grammarly-languageserver",

    -- Json
    "jsonlint",
    "json-lsp",

    "dockerfile-language-server",
    "yaml-language-server",

  },

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = "󰇚 ",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },
}

-- git support in nvimtree
M.nvimtree = {
  filters = {
    dotfiles = false,
    custom = {
      "**/node_modules",
      "**/%.git",
      "**/%.github",
    },
  },
  git = {
    enable = true,
    ignore = false,
  },
  hijack_unnamed_buffer_when_opening = true,
  hijack_cursor = true,
  diagnostics = {
    enable = false,
    show_on_dirs = false,
    debounce_delay = 50,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
  renderer = {
    highlight_opened_files = "name",
    highlight_git = true,
    group_empty = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        git = {
          unstaged = "",
          -- unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "➜",
          -- untracked = "",
          untracked = "",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  tab = {
    sync = {
      open = true,
      close = true,
    },
  },
}

M.telescope = {
  defaults = {
    preview = {
      mime_hook = function(filepath, bufnr, opts)
        local is_image = function(filepath)
          local image_extensions = {'png','jpg'}   -- Supported image formats
          local split_path = vim.split(filepath:lower(), '.', {plain=true})
          local extension = split_path[#split_path]
          return vim.tbl_contains(image_extensions, extension)
        end
        if is_image(filepath) then
          local term = vim.api.nvim_open_term(bufnr, {})
          local function send_output(_, data, _ )
            for _, d in ipairs(data) do
              vim.api.nvim_chan_send(term, d..'\r\n')
            end
          end
          vim.fn.jobstart(
            {
              'catimg', filepath  -- Terminal image viewer command
            }, 
            {on_stdout=send_output, stdout_buffered=true, pty=true})
        else
          require("telescope.previewers.utils").set_preview_message(bufnr, opts.winid, "Binary cannot be previewed")
        end
      end
    },
    file_ignore_patterns = {
      "node_modules",
      ".docker",
      "yarn.lock",
      "go.sum",
      "go.mod",
      "tags",
      "mocks",
      "refactoring",
    },
    layout_config = {
      horizontal = {
        prompt_position = "bottom",
      },
    },
  },
  extensions_list = {
    "notify",
    "frecency",
    "undo",
    "vim_bookmarks",
    "harpoon",
    "noice",
    "ctags_plus",
    "luasnip",
    "dir",
    "media_files",
    "cder"
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    },
    lazy = {
      show_icon = true,
      mappings = {
        open_in_browser = "<C-o>",
        open_in_file_browser = "<M-b>",
        open_in_find_files = "<C-f>",
        open_in_live_grep = "<C-g>",
        open_plugins_picker = "<C-b>",
        open_lazy_root_find_files = "<C-r>f",
        open_lazy_root_live_grep = "<C-r>g",
      },
    },
     media_files = {
      -- filetypes whitelist
      -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
      filetypes = {"png", "webp", "jpg", "jpeg"},
      -- find command (defaults to `fd`)
      find_cmd = "rg"
    },
  },
}

return M
