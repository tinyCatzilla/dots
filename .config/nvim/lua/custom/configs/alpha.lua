local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
    [[                                                   ]],
    [[                                              ___  ]],
    [[                                           ,o88888 ]],
    [[                                        ,o8888888' ]],
    [[                  ,:o:o:oooo.        ,8O88Pd8888"  ]],
    [[              ,.::.::o:ooooOoOo:. ,oO8O8Pd888'"    ]],
    [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"      ]],
    [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"        ]],
    [[          , ..:.::o:ooOoOO8O888O8O,COCOO"          ]],
    [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"            ]],
    [[         ,. ..:.::o:ooOoOoOO8O8OCCCC"o             ]],
    [[         .. .:...:.::o:ooooOoCoCCC"o:o             ]],
    [[         . ::.:..:.::o:o:,cooooCo"oo:o:            ]],
    [[          :  :. . ..:.:cocoooo"'o:o:::'            ]],
    [[          .'   . ..::ccccoc"'o:o:o:::'             ]],
    [[         :.:.    ,c:cccc"':.:.:.:.:.'              ]],
    [[       ..:.:"'`::::c:"'..:.:.:.:.:.'               ]],
    [[     ...:.'.:.::::"'    . . . . .'                 ]],
    [[    .. . ....:."' `   .  . . ''                    ]],
    [[  . . . ...."'                                     ]],
    [[  .. . ."'                                         ]],
    [[ .                                                 ]],
    [[                                                   ]],
}
dashboard.section.buttons.val = {
  -- dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  -- dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  -- dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	-- dashboard.button("d", "✗  Delete session", "<cmd>SessionsManager delete_session<CR>"),
  dashboard.button("s", "  Sessions", "<cmd>SessionManager load_session<CR>"),
  dashboard.button("r", "  Recent", ":Telescope oldfiles <CR>"),
	dashboard.button("f", "  Find", ":Telescope find_files <CR>"),
	dashboard.button("c", "  Config", ":e $MYVIMRC <CR>"),
	dashboard.button("i", "  Info", "<cmd>e ~/.config/CheatSheet.md<cr>"),
	dashboard.button("q", "  Quit", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return ""
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
