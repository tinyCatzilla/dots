---@type ChadrcConfig 
local M = {}
local core = require "custom.utils.core"
local highlights = require "custom.highlights"
M.ui = {
  theme = 'anotherfriend',
  nvdash = core.nvdash,
  hl_override = highlights.override,
  hl_add = highlights.add,
}
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

M.settings = {
  cc_size = "130",
  so_size = 10,

  -- Blacklisted files where cc and so must be disabled
  blacklist = {
    "NvimTree",
    "nvdash",
    "nvcheatsheet",
    "terminal",
    "Trouble",
    "help",
  },
}

return M
