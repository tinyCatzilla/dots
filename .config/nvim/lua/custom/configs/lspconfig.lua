local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = {
  "html",
  "cssls",
  "tsserver",
  "clangd",
  "jdtls",
  "astro",
  "gopls",
  "grammarly",
  "marksman",
  "yamlls",
  "jsonls",
  "dockerls",
  "lua_ls",
  "ltex",
  "rust_analyzer",
  "r_language_server",
}

require("mason-lspconfig").setup {
  ensure_installed = servers,
}

-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     capabilities = capabilities,
--   }
-- end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = function(client, bufnr)
        on_attach(client, bufnr)
      end,
      capabilities = capabilities,
    }
  end,

  ["lua_ls"] = function()
    lspconfig["lua_ls"].setup {
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          diagnostics = {
            globals = { "use", "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
          hint = {
            enable = true,
            setType = true,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
  end,

  ["tsserver"] = function()
    lspconfig["tsserver"].setup {
      capabilities = capabilities,
      on_attach = on_attach,
      single_file_support = true,
      init_options = {
        preferences = {
          includeCompletionsWithSnippetText = true,
          includeCompletionsWithInsertText = true,
        },
      },
      settings = {
        completions = {
          completeFunctionCalls = true,
        },
        typescript = {
          inlayHints = {
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
        javascript = {
          inlayHints = {
            includeInlayParameterNameHints = "all",
            includeInlayParameterNameHintsWhenArgumentMatchesName = false,
            includeInlayFunctionParameterTypeHints = true,
            includeInlayVariableTypeHints = true,
            includeInlayPropertyDeclarationTypeHints = true,
            includeInlayFunctionLikeReturnTypeHints = true,
            includeInlayEnumMemberValueHints = true,
          },
        },
        preferences = {
          importModuleSpecifierPreference = "non-relative",
          upddateImportsOnFileMove = "always",
        },
      },
    }
  end,

  ["gopls"] = function()
    lspconfig["gopls"].setup {
      on_attach = on_attach,
      filetypes = { "go", "gomod", "gowork", "gosum", "goimpl" },
      capabilities = capabilities,
      settings = {
        gopls = {
          buildFlags = { "-tags=wireinject" },
          usePlaceholders = true,
          completeUnimported = true,
          vulncheck = "Imports",
          analyses = {
            nilness = true,
            shadow = true,
            unusedparams = true,
            unusewrites = true,
          },
          staticcheck = true,
          codelenses = {
            references = true,
            test = true,
            tidy = true,
            upgrade_dependency = true,
            generate = true,
          },
          gofumpt = true,
        },
      },
    }
  end,

  -- ["ltex"] = function()
  --   lspconfig["ltex"].setup{
  --   }
  -- end,

  ["r_language_server"] = function()
    lspconfig["r_language_server"].setup{
    }
  end,

  ["rust_analyzer"] = function()
    lspconfig["rust_analyzer"].setup{
    }
  end,
}

-- vim.lsp.handlers["textDocument/hover"] = require("noice").hover
-- vim.lsp.handlers["textDocument/signatureHelp"] = require("noice").signature

vim.diagnostic.config {
  virtual_lines = false,
  virtual_text = true,
  float = {
    source = "always",
    border = "rounded",
  },
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
}

