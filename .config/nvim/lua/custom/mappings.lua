local M = {}

M.disabled = {
  n = {
    ["<leader>f"] = "",
    ["<leader>b"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    ["<leader>ch"] = "",
    ["<leader>ra"] = "",
  },
}

-- M.lf = {
--   n = {
--     ["<leader>lf"] = {":Lf<CR>", "lf"},
--   },
--   v = {
--     ["<leader>lf"] = {":Lf<CR>", "lf"},
--   },
-- }

M.general = {
  n = {
    ["<leader>d"] = { "<cmd>bdelete!<CR>"                 , "delete buffer" },
    ["<leader>q"] = { "<cmd>wqa!<CR>"                     , "quit" },
    ["<leader>w"] = { "<cmd>wa!<CR>"                      , "write" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<TAB>"] = {"<cmd>bnext<CR>"},
    ["<S-TAB>"] = {"<cmd>bprevious<CR>"},
    ["<leader>ss"] = { "<cmd>SessionManager save_current_session<CR>", "save" },
    ["<leader>sd"] = { "<cmd>SessionManager delete_session<CR>", "delete" },
    ["<leader>sl"] = { "<cmd>SessionManager load_session<CR>", "load" },
    ["<leader>ac"] = {"<cmd>lua vim.g.cmptoggle = not vim.g.cmptoggle<CR>", "toggle autocomplete"}
  },
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "move down through lines"},
    ["K"] = {":m '<-2<CR>gv=gv", "move up through lines"},
  },
  -- x = {
  --   ["<leader>p"] = {"\"_dP", "paste+keep buffer(?)"}
  -- },
}

M.harpoon = {
  n = {
    ["<leader>ha"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "󱡁 Harpoon Add file",
    },
    ["<leader>ht"] = { "<cmd>Telescope harpoon marks<CR>", "󱡀 Toggle quick menu" },
    ["<leader>hb"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "󱠿 Harpoon Menu",
    },
    ["<leader>1"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<leader>2"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<leader>3"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "󱪾 Navigate to file 3",
    },
    ["<leader>4"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "󱪿 Navigate to file 4",
    },
  },
}

M.portal = {
  n = {
    ["<leader>pj"] = { "<cmd>Portal jumplist backward<CR>", "󱡁 Portal Jumplist" },
    ["<leader>ph"] = {
      function()
        require("portal.builtin").harpoon.tunnel()
      end,
      "󱡁 Portal Harpoon",
    },
  },
}

-- M.folder = {
--   n = {
--     ["<leader>aa"] = {
--       function()
--         require("fold-cycle").toggle_all()
--       end,
--       "󰴋 Toggle folder",
--     },
--     ["<leader>ap"] = {
--       function()
--         require("fold-preview").toggle_preview()
--       end,
--       "󱞊 Fold preview",
--     },
--   },
-- }

M.telescope = {
  n = {
    ["<leader>ff"] = {"<cmd>Telescope file_browser<CR>","search files",
    },
    ["<leader>fh"] = {"<cmd> Telescope file_browser cwd=$HOME <CR>", "search home"},
    ["<leader>fw"] = {"<cmd> Telescope find_files cwd=$HOME/work <CR>", "search work"},
    ["<leader>fl"] = {"<cmd> Telescope find_files cwd=$HOME/work/latex <CR>", "search latex"},
    ["<leader>fp"] = {"<cmd>Telescope find_files cwd=$HOME/work/projects <CR>", "search projects"},
    ["<leader>fg"] = {"<cmd> Telescope find_files cwd=$HOME/work/figures <CR>", "search figures"},
    ["<leader>fe"] = {"<cmd> Telescope find_files cwd=$HOME/work/envs <CR>", "search envs"},
    -- ["<leader>fd"] = {"<cmd> Telescope find_files cwd=$HOME/work/dotfiles <CR>", "search dotfiles"},
    -- ["<leader>fs"] = {"<cmd> Telescope find_files cwd=$HOME/work/school <CR>", "search school"},
    ["<leader>ft"] = {"<cmd> Telescope find_files cwd=$HOME/work/textbooks <CR>", "search textbooks"},
    -- ["<leader>ft"] = {"<cmd> Telescope find_files cwd=$HOME/work/talks <CR>", "search talks"},
    -- ["<leader>fv"] = {"<cmd> Telescope find_files cwd=$HOME/work/vimwiki <CR>", "search vimwiki"},
    ["<leader>fc"] = {"<cmd> Telescope find_files cwd=$HOME/.config <CR>", "search config"},
    ["<leader>fb"] = {"<cmd>Telescope bibtex<CR>", "search bib-citations"},
    -- ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", " Find keymaps" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<CR>", "search recent" },
    ["<leader>fu"] = { "<cmd>Telescope undo<CR>", " Undo tree" },
    ["<leader>fy"] = { function() require('telescope.builtin').buffers() end, "search buffers"}
  },
}

M.bookmark = {
  n = {
    ["<leader>bt"] = { "<cmd> BookmarkToggle<CR>", "󰃅 Toggle bookmark" },
    ["<leader>bn"] = { "<cmd> BookmarkNext<CR>", "󰮰 Next bookmark" },
    ["<leader>bp"] = { "<cmd> BookmarkPrev<CR>", "󰮲 Prev bookmark" },
    ["<leader>bc"] = { "<cmd> BookmarkClear<CR>", "󰃢 Clear bookmarks" },
    ["<leader>bm"] = { "<cmd>Telescope vim_bookmarks all<CR>", " Bookmark Menu"    },
  },
}

M.latex = {
  n = {
    ["<leader>lc"] = { "<cmd>VimtexCompile<CR>"            , "compile" },
    ["<leader>lv"] = { "<cmd>VimtexView<CR>"               , "view" },
    ["<leader>lcv"] = { "<cmd>wa! | execute 'VimtexCompile' | execute 'VimtexView'<CR>", "save, compile, and view" },
    ["<leader>lw"] = { "<cmd>VimtexCountWords!<CR>"        , "word count" },
    ["<leader>li"] = { "<cmd>VimtexTocOpen<CR>"            , "index" },
    -- ["<leader>lb"] = { "<cmd>terminal bibexport -o %:p:r.bib %:p:r.aux<CR>", "bib export"},
    ["<leader>le"] = { "<cmd>VimtexErrors<CR>"           , "errors" },
    ["<leader>lm"] = { "<plug>(vimtex-context-menu)"            , "vimtex menu" },
  },
}

M.hover = {
  n = {
    ["<leader>ko"] = {
      function()
        require("pretty_hover").hover()
      end, "Open hover"
    },
    ["<leader>kq"] = {
      function()
        require("pretty_hover").close()
      end, "Close hover"
    },
  },
}

return M

