-- local M = {}
--
-- ---@type Base46HLGroupsList
-- M.override = {
--   NvDashAscii = { fg = "none", bg = "none" },
-- }
--
-- return M

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = { italic = true },
  NvDashAscii = { fg = "none", bg = "none" },
  IndentBlanklineContextStart = { bg = "none" },
  -- TreeSitter highlights
  -- literals
  ["String"] = { fg = "blue" },
  ["@string"] = { fg = "blue" },
  ["@string.regex"] = { fg = "blue" },
  ["@string.special"] = { fg = "blue" },
  ["@string.escape"] = { fg = "blue" },
  ["Boolean"] = { fg = "blue" },
  ["Number"] = { fg = "blue" },
  ["@float"] = { fg = "blue" },
  ["@character"] = { fg = "blue" },
  ["Structure"] = { fg = "sun" },
  ["@constructor"] = { fg = "green"},
  --functions
  ["@function"] = { fg = "sun"},
  ["@function.builtin"] = { fg = "sun"},
  ["@function.call"] = { fg = "sun"},
  ["@function.macro"] = { fg = "sun"},
  ["@method"] = { fg = "sun"},
  ["@method.call"] = { fg = "sun"},
  -- keywords
  ["@keyword"] = { fg = "pink"},
  ["@keyword.function"] = { fg = "pink"},
  ["@keyword.operator"] = { fg = "pink"},
  ["@keyword.return"] = { fg = "sun"},
  ["Conditional"] = { fg = "red"},
  ["@conditional.ternary"] = { fg = "red"},
  ["Repeat"] = { fg = "red"}, -- for loops
  ["Include"] = { fg = "pink"},
  ["@exception"] = { fg = "purple"},
  ["@debug"] = { fg = "purple"},
  -- types/vars
  -- ["@attribute"] = { fg = "cyan"},
  ["@variable"] = { fg = "cyan" },
  ["Variable"] = { fg = "cyan" },
  ["@variable.builtin"] = { fg = "pink" }, --this.
  ["@parameter"] = { fg = "cyan" },
  ["@type.builtin"] = { fg = "purple" }, -- type annotations
  ["Type"] = { fg = "green" },
  ["Typedef"] = { fg = "green" },
  ["@field"] = { fg = "cyan"},
  ["@property"] = { fg = "cyan"},
  ["@constant"] = { fg = "cyan" },
  ["@constant.builtin"] = { fg = "cyan" },
  ["@constant.macro"] = { fg = "cyan" },
  -- misc
  ["@operator"] = { fg = "red" }, -- math/logic
  ["SpecialChar"] = { fg = "red" },
  ["WarningMsg"] = { fg = "orange"},
  ["@error"] = { fg = "red"},
  ["Error"] = { fg = "red"},
  ["ErrorMsg"] = { fg = "red"},
  ["Define"] = { fg = "pink" },
  ["Special"] = { fg = "cyan" },
  ["Todo"] = { fg = "green" },
}

M.add = {
  -- -- latex https://github.com/lervag/vimtex/blob/master/doc/vimtex.txt#L4724
  texCmd = { fg = "sun" },
  texCmdEnv = { fg = "sun" },
  texOpt = { fg = "pink" },
  texFileOpt = { fg = "pink" },
  texFilesOpt = { fg = "pink" },
  texArg = { fg = "pink" },
  texArgNew = { fg = "pink" },
  texDefArgName = { fg = "pink" },
  texFileArg = { fg = "pink" },
  texBoxOptPosVal = { fg = "pink" },
  texBoxOptIPosVal = { fg = "pink" },
  texFilesArg = { fg = "pink" },
  texCmdAccent = { fg = "pink" },
  texCmdParbox = { fg = "pink" },
  texCmdItem = { fg = "pink" },
  texParm = { fg = "pink" },
  texMathOper = { fg = "red" },
  texDelim = { fg = "blue" },
  texMathDelim = { fg = "blue" },
  texMathDelimMod = { fg = "blue" },
  texMathDelimZone = { fg = "blue" },
  texMathDelimZoneLI = { fg = "blue" },
  texMathDelimZoneLD = { fg = "blue" },
  texMathDelimZoneTI = { fg = "blue" },
  texMathDelimZoneTD = { fg = "blue" },
  texMathZone = { fg = "cyan" },
  texEnvArgName = { fg = "green" },
  texMathEnvArgName = { fg = "green" },
  texError = { fg = "red" },
  texLigature = { fg = "purple" },
  texLength = { fg = "white" },


  -- idk
  MultiCursor = { bg = "white" },
  MultiCursorMain = { bg = "white" },

  -- Deprecated
  cssDeprecated                = { strikethrough = true },
  javaScriptDeprecated         = { strikethrough = true },

  -- -- Custom highlights
  -- CopilotHl = { fg = "white", bg = "statusline_bg" },
  -- HarpoonHl = { fg = "cyan", bg = "statusline_bg" },
  -- BatteryHl = { fg = "nord_blue", bg = "statusline_bg" },
  -- SessionHl = { fg = "#e535ab", bg = "statusline_bg" },
  -- NotificationHl = { fg = "white", bg = "statusline_bg" },
  -- TermHl = { fg = "green", bg = "statusline_bg" },
  -- SplitHl = { fg = "white", bg = "statusline_bg" },
  -- IndentBlanklineContextChar = { fg = "none" },
  -- IndentBlanklineContextStart = { bg = "none" },
  --
  -- DiagnosticUnnecessary        = { link = "", fg = "light_grey" },
  -- LspInlayHint                 = { link = "", fg = "light_grey" },
}

return M
