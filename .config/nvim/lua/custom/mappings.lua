local M = {}

M.disabled = {
  n = {
    ["<leader>f"] = "",
    ["<leader>b"] = "",
    ["<leader>wK"] = "",
    ["<leader>wk"] ="",
    ["<leader>k"] = "",
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
    ["<leader>cc"] = { "<cmd>VimtexCompile<CR>"            , "build" },
    ["<leader>cw"] = { "<cmd>VimtexCountWords!<CR>"        , "count" },
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
    ["<C-d>"] = {"<C-d>zz"},
    ["<C-u>"] = {"<C-u>zz"},
    -- ["<C-f>"] = {"<cmd>silent !tmux neww tmux-sessionizer<CR>", "tmux stuff"},
    ["<BS>"] = {"<cmd>bnext<CR>"},
    ["<S-TAB>"] = {"<cmd>bprevious<CR>"},
    ["<leader>ss"] = { "<cmd>SessionManager save_current_session<CR>", "save" },
    ["<leader>sd"] = { "<cmd>SessionManager delete_session<CR>", "delete" },
    ["<leader>sl"] = { "<cmd>SessionManager load_session<CR>", "load" },
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
    ["<leader>cd"] = { "<cmd>Telescope cder<CR>", "Change working directory"},
    ["<leader>ff"] = {
      function()
        require('telescope.builtin').find_files(require('telescope.themes').get_dropdown({previewer = false}))
      end,
      "Find files",
    },
    ["<leader>fh"] = {"<cmd> Telescope find_files cwd=$HOME <CR>", "search home"},
    ["<leader>fp"] = {"<cmd> Telescope find_files cwd=$HOME/Desktop/github <CR>", "search projects"},
    ["<leader>fc"] = {"<cmd> Telescope find_files cwd=$HOME/.config <CR>", "search config"},
    ["<leader>fb"] = {"<cmd>Telescope bibtex<CR>", "search citations"},
    -- ["<leader>fk"] = { "<cmd>Telescope keymaps<CR>", " Find keymaps" },
    ["<leader>fr"] = { "<cmd>Telescope frecency<CR>", " Recent files" },
    ["<leader>fu"] = { "<cmd>Telescope undo<CR>", " Undo tree" },
    ["<leader>fz"] = {
      "<cmd>Telescope current_buffer_fuzzy_find fuzzy=false case_mode=ignore_case<CR>",
      " Find in file",
    },
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

M.searchbox = {
  n = {
    ["<C-F>"] = { "<cmd> SearchBoxMatchAll clear_matches=true<CR>", "󱘟 Search matching all" },
    ["<leader>r"] = { "<cmd> SearchBoxReplace confirm=menu<CR>", " Replace" },
  },
}

M.latex = {

}

return M

