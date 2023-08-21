local overrides = require "custom.configs.overrides"
local cmp_opt = require "custom.configs.cmp"

local plugins = {
  -- cmp
  {
    "hrsh7th/nvim-cmp",
    opts = cmp_opt.cmp,
    dependencies = {
      "delphinus/cmp-ctags",
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-copilot",
      "ray-x/cmp-treesitter",
      "js-everts/cmp-tailwind-colors",
      { "jcdickinson/codeium.nvim", config = true },
      {
        "tzachar/cmp-tabnine",
        build = "./install.sh",
        config = function()
          local tabnine = require "cmp_tabnine.config"
          tabnine:setup {
            max_lines = 1000,
            max_num_results = 3,
            sort = true,
            show_prediction_strength = false,
            run_on_every_keystroke = true,
            snipper_placeholder = "..",
            ignored_file_types = {},
          }
        end,
      },
      {
        "L3MON4D3/LuaSnip",
        config = function(_, opts)
          require("plugins.configs.others").luasnip(opts)
          require "custom.configs.luasnip"
        end,
      },
      {
        "zbirenbaum/copilot.lua",
        event = "InsertEnter",
        dependencies = {
          {
            "zbirenbaum/copilot-cmp",
            config = function()
              require("copilot_cmp").setup()
            end,
          },
        },
        config = function()
          require("copilot").setup {
            suggestion = {
              enabled = false,
              auto_trigger = false,
              keymap = {
                -- accept = "<Tab>",
                accept_word = false,
                accept_line = false,
                next = "<M-]>",
                prev = "<M-[>",
                dismiss = "<C-]>",
              },
            },
            panel = {
              enabled = false,
            },
            filetypes = {
              gitcommit = false,
              TelescopePrompt = false,
            },
            server_opts_overrides = {
              trace = "verbose",
              settings = {
                advanced = {
                  listCount = 3,
                  inlineSuggestCount = 3,
                },
              },
            },
          }
        end,
      },
    },
    config = function(_, opts)
      dofile(vim.g.base46_cache .. "cmp")
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        if item.kind == "Color" then
          item = require("cmp-tailwind-colors").format(entry, item)
          if item.kind == "Color" then
            return format_kinds(entry, item)
          end
          return item
        end
        return format_kinds(entry, item)
      end
      require("cmp").setup(opts)
    end,
  },


  {
    "github/copilot.vim",
    lazy = false,
    config = function()
      require "custom.configs.copilot"
    end,
  },


 -- {
 --    "kevinhwang91/nvim-ufo",
 --    event = "VeryLazy",
 --    dependencies = {
 --      "kevinhwang91/promise-async",
 --      {
 --        "luukvbaal/statuscol.nvim",
 --        event = "BufReadPost",
 --        config = function()
 --          local builtin = require "statuscol.builtin"
 --          require("statuscol").setup {
 --            relculright = true,
 --            bt_ignore = { "nofile", "prompt", "terminal", "packer" },
 --            ft_ignore = { "NvimTree", "dashboard", "nvcheatsheet" },
 --            segments = {
 --              -- Segment 1: Add padding
 --              {
 --                text = { " " },
 --              },
 --              -- Segment 2: Fold Column
 --              { text = { builtin.foldfunc }, click = "v:lua.ScFa" },
 --              -- Segment 3: Add padding
 --              {
 --                text = { " " },
 --              },
 --              -- Segment 4: Show signs with one character width
 --              {
 --                sign = { name = { ".*" }, maxwidth = 1, colwidth = 1 },
 --                auto = true,
 --                click = "v:lua.ScSa",
 --              },
 --              -- Segment 5: Show line number
 --              {
 --                text = { " ", " ", builtin.lnumfunc, " " },
 --                click = "v:lua.ScLa",
 --                condition = { true, builtin.not_empty },
 --              },
 --              -- Segment 6: Add padding
 --              {
 --                text = { " " },
 --                hl = "Normal",
 --                condition = { true, builtin.not_empty },
 --              },
 --            },
 --          }
 --        end,
 --      },
 --    },
 --    config = function()
 --      require "custom.configs.ufo"
 --    end,
 --  },
--    {
  --   "anuvyklack/pretty-fold.nvim",
  --   keys = { "<leader>a" },
  --   config = function()
  --     require "custom.configs.pretty-fold"
  --   end,
  -- },
  -- {
  --   "jghauser/fold-cycle.nvim",
  --   keys = { "<leader>a" },
  --   config = function()
  --     require("fold-cycle").setup()
  --   end,
  -- },
  -- {
  --   "anuvyklack/fold-preview.nvim",
  --   keys = { "<leader>a" },
  --   dependencies = {
  --     "anuvyklack/keymap-amend.nvim",
  --   },
  --   opts = {
  --     border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  --   },
  -- },
  --

  {
    'lervag/vimtex',
    lazy=false
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require "custom.configs.noice"
    end,
  },
  -- {
  --   'nvim-orgmode/orgmode',
  --   lazy=false,
  --   config = function()
  --           require('orgmode').setup{}
  --   end,
  -- },
  -- {
  --   'ptzz/lf.vim',
  --   lazy=false,
  -- },
  -- {
  --   'voldikss/vim-floaterm',
  --   lazy=false,
  -- },
  {
    "christoomey/vim-tmux-navigator",
    lazy=false,
  },
  {
    "nvim-lua/popup.nvim"
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
    dependencies = {
      "debugloop/telescope-undo.nvim",
      "gnfisher/nvim-telescope-ctags-plus",
      "tom-anders/telescope-vim-bookmarks.nvim",
      "benfowler/telescope-luasnip.nvim",
      "Marskey/telescope-sg",
      {
        "ThePrimeagen/harpoon",
        cmd = "Harpoon",
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      {
        "nvim-telescope/telescope-frecency.nvim",
        dependencies = { "kkharji/sqlite.lua" },
      },
    },
  },
  {
    "princejoogie/dir-telescope.nvim",
    dependencies = {"nvim-telescope/telescope.nvim"},
    config = function()
      require("dir-telescope").setup({
        -- these are the default options set
        hidden = true,
        no_ignore = false,
        show_preview = true,
      })
    end,
  },
  {
    "nvim-telescope/telescope-media-files.nvim",
    dependencies = {"nvim-telescope/telescope.nvim"},
  },
  {
    "cbochs/portal.nvim",
    keys = { "<leader>pj", "<leader>ph" },
  },

  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    config = function()
      require "custom.configs.autosave"
    end,
  },
  {
    "VonHeikemen/searchbox.nvim",
    cmd = { "SearchBoxMatchAll", "SearchBoxReplace", "SearchBoxIncSearch" },
    config = true,
  },
  {
    "Fildo7525/pretty_hover",
    keys = { "<leader>k" },
    config = true,
  },
  {
    "Zeioth/compiler.nvim",
    cmd = { "CompilerOpen", "CompilerToggleResults" },
    dependencies = {
      {
        "stevearc/overseer.nvim",
        commit = "3047ede61cc1308069ad1184c0d447ebee92d749",
        opts = {
          task_list = {
            direction = "bottom",
            min_height = 25,
            max_height = 25,
            default_detail = 1,
            bindings = {
              ["q"] = function()
                vim.cmd "OverseerClose"
              end,
            },
          },
        },
      },
    },
    config = function(_, opts)
      require("compiler").setup(opts)
    end,
  },

  {
    "zane-/cder.nvim"
  }
}
return plugins
