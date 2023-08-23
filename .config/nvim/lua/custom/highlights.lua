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
  ["@property"] = { fg = "cyan"},
  ["@variable"] = { fg = "cyan" },
  ["Variable"] = { fg = "cyan" },
  ["@variable.builtin"] = { fg = "pink" }, --this.
  ["@parameter"] = { fg = "cyan" },
  ["@type.builtin"] = { fg = "purple" }, -- type annotations
  ["Type"] = { fg = "green" },
  ["Typedef"] = { fg = "green" },
  ["@constant"] = { fg = "cyan" },
  ["@constant.builtin"] = { fg = "cyan" },
  ["@constant.macro"] = { fg = "cyan" },
  -- misc
  ["@operator"] = { fg = "red" },

}

---@type HLTable
M.add = {
  MultiCursor = { bg = "white" },
  MultiCursorMain = { bg = "white" },

--[[   DapBreakpoint = { fg = "red" }, ]]

  LightBulbSign = { bg = "black", fg = "yellow" },

  NvimTreeOpenedFolderName = { fg = "purple", bold = true },
  NvimTreeOpenedFile = { fg = "green", bold = true },

  -- Cmp Highlights
  CmpItemKindCodeium = { fg = "#51BDAC" },
  CmpItemKindTabNine = { fg = "#C73BE3" },

  VirtColumn = { fg = "black2" },
  FoldColumn = { bg = "black", fg = "white" },
  Folded = { bg = "black", fg = "white" },

  -- -- Tree Sitter Rainbow
  -- RainbowDelimiterRed = { fg = "red" },
  -- RainbowDelimiterYellow = { fg = "yellow" },
  -- RainbowDelimiterBlue = { fg = "blue" },
  -- RainbowDelimiterOrange = { fg = "orange" },
  -- RainbowDelimiterGreen = { fg = "green" },
  -- RainbowDelimiterViolet = { fg = "purple" },
  -- RainbowDelimiterCyan = { fg = "cyan" },
  --
  -- Diff
  DiffChange = { fg = "yellow" },
  DiffAdd = { fg = "vibrant_green" },
  DiffText = { fg = "white", bg = "red", bold = true },

  -- Deprecated
  cssDeprecated                = { strikethrough = true },
  javaScriptDeprecated         = { strikethrough = true },

  -- -- Search highlights
  -- HlSearchNear = { fg = "#2E3440", bg = "yellow" },
  -- HlSearchLens = { fg = "#2E3440", bg = "blue" },
  -- HlSearchLensNear = { fg = "#2E3440", bg = "yellow" },

  -- -- LSP Saga
  -- SagaBorder = { fg = "blue" },
  -- SagaWinbarFolder = { fg = "blue" },
  -- HoverNormal = { fg = "white" },
  -- CodeActionText = { fg = "white" },
  -- CodeActionNumber = { link = "Number" },

  -- Custom highlights
  CopilotHl = { fg = "white", bg = "statusline_bg" },
  HarpoonHl = { fg = "cyan", bg = "statusline_bg" },
  BatteryHl = { fg = "nord_blue", bg = "statusline_bg" },
  SessionHl = { fg = "#e535ab", bg = "statusline_bg" },
  NotificationHl = { fg = "white", bg = "statusline_bg" },
  TermHl = { fg = "green", bg = "statusline_bg" },
  SplitHl = { fg = "white", bg = "statusline_bg" },
  IndentBlanklineContextChar = { fg = "none" },
  IndentBlanklineContextStart = { bg = "none" },

  DiagnosticUnnecessary        = { link = "", fg = "light_grey" },
  LspInlayHint                 = { link = "", fg = "light_grey" },
}

return M
