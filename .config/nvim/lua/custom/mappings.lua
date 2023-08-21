local M = {}

M.disabled = {
  n = {
    ["<leader>f"] = "",
    ["<leader>b"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] = "",
    -- ["<leader>k"] = "",
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
    ["<leader>i"] = { "<cmd>VimtexTocOpen<CR>"            , "index" },
    ["<leader>q"] = { "<cmd>wqa!<CR>"                     , "quit" },
    ["<leader>v"] = { "<cmd>VimtexView<CR>"               , "view" },
    ["<leader>w"] = { "<cmd>wa!<CR>"                      , "write" },
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
    ["<leader>qq"] = { "<cmd>qa!<CR>", "󰗼 Exit" },
    ["J"] = {"mzJ`z"},
    -- ["<C-f>"] = {"<cmd>silent !tmux neww tmux-sessionizer<CR>", "tmux stuff"},
    ["<BS>"] = {"<cmd>bnext<CR>"},
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
    ["<leader>fw"] = {"<cmd> Telescope file_browser cwd=$HOME/work <CR>", "search work"},
    ["<leader>fl"] = {"<cmd> Telescope file_browser cwd=$HOME/work/latex <CR>", "search latex"},
    ["<leader>fp"] = {"<cmd> Telescope file_browser cwd=$HOME/work/projects <CR>", "search projects"},
    ["<leader>fg"] = {"<cmd> Telescope file_browser cwd=$HOME/work/figures <CR>", "search figures"},
    ["<leader>fe"] = {"<cmd> Telescope file_browser cwd=$HOME/work/envs <CR>", "search envs"},
    -- ["<leader>fd"] = {"<cmd> Telescope file_browser cwd=$HOME/work/dotfiles <CR>", "search dotfiles"},
    -- ["<leader>fs"] = {"<cmd> Telescope file_browser cwd=$HOME/work/school <CR>", "search school"},
    ["<leader>ft"] = {"<cmd> Telescope file_browser cwd=$HOME/work/textbooks <CR>", "search textbooks"},
    -- ["<leader>ft"] = {"<cmd> Telescope file_browser cwd=$HOME/work/talks <CR>", "search talks"},
    -- ["<leader>fv"] = {"<cmd> Telescope file_browser cwd=$HOME/work/vimwiki <CR>", "search vimwiki"},
    ["<leader>fc"] = {"<cmd> Telescope file_browser cwd=$HOME/.config <CR>", "search config"},
    ["<leader>fb"] = {"<cmd>Telescope bibtex<CR>", "search citations"},
    -- ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", " Find keymaps" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<CR>", "search recent" },
    ["<leader>fu"] = { "<cmd>Telescope undo<CR>", " Undo tree" },
    -- ["<leader>fz"] = {
    --   "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>",
    --   " Find in file",
    -- },
  },
}

M.bookmark = {
  n = {
    ["<leader>ba"] = { "<cmd> BookmarkToggle<CR>", "󰃅 Add bookmark" },
    ["<leader>bn"] = { "<cmd> BookmarkNext<CR>", "󰮰 Next bookmark" },
    ["<leader>bp"] = { "<cmd> BookmarkPrev<CR>", "󰮲 Prev bookmark" },
    ["<leader>bc"] = { "<cmd> BookmarkClear<CR>", "󰃢 Clear bookmark" },
    ["<leader>bm"] = { "<cmd>Telescope vim_bookmarks all<CR>", " Bookmark Menu"    },
  },
}

M.latex = {
  n = {
    ["<leader>cc"] = { "<cmd>VimtexCompile<CR>"            , "build" },
    ["<leader>cw"] = { "<cmd>VimtexCountWords!<CR>"        , "count" },
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

