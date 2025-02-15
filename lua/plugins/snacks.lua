return {
-- 	"folke/snacks.nvim",
-- 	priority = 1000,
-- 	lazy = false,
-- 	---@type snacks.Config
-- 	opts = {
-- 		bigfile = { enabled = false},
-- 		dashboard = {
-- 			width = 60,
-- 			row = nil, -- dashboard position. nil for center
-- 			col = nil, -- dashboard position. nil for center
-- 			pane_gap = 4, -- empty columns between vertical panes
-- 			autokeys = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ", -- autokey sequence
-- 			-- These settings are used by some built-in sections
-- 			preset = {
-- 				-- Defaults to a picker that supports `fzf-lua`, `telescope.nvim` and `mini.pick`
-- 				---@type fun(cmd:string, opts:table)|nil
-- 				pick = nil,
-- 				-- Used by the `keys` section to show keymaps.
-- 				-- Set your custom keymaps here.
-- 				-- When using a function, the `items` argument are the default keymaps.
-- 				---@type snacks.dashboard.Item[]
-- 				keys = {
-- 					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
-- 					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
-- 					{
-- 						icon = " ",
-- 						key = "g",
-- 						desc = "Find Text",
-- 						action = ":lua Snacks.dashboard.pick('live_grep')",
-- 					},
-- 					{
-- 						icon = " ",
-- 						key = "r",
-- 						desc = "Recent Files",
-- 						action = ":lua Snacks.dashboard.pick('oldfiles')",
-- 					},
-- 					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
-- 					{
-- 						icon = "󰒲 ",
-- 						key = "L",
-- 						desc = "Lazy",
-- 						action = ":Lazy",
-- 						enabled = package.loaded.lazy ~= nil,
-- 					},
-- 					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
-- 				},
-- 				-- Used by the `header` section
--         header = [[
--
--  ,ggggggggggg,                                                                                
-- dP"""88""""""Y8,                                          ,dPYb, ,dPYb,             ,dPYb,    
-- Yb,  88      `8b                                          IP'`Yb IP'`Yb             IP'`Yb    
--  `"  88      ,8P  gg                                 gg   I8  8I I8  8I             I8  8I    
--      88aaaad8P"   ""                                 ""   I8  8' I8  8'             I8  8'    
--      88""""Y8ba   gg     ,g,      ,ggg,,ggg,,ggg,    gg   I8 dP  I8 dP    ,gggg,gg  I8 dPgg,  
--      88      `8b  88    ,8'8,    ,8" "8P" "8P" "8,   88   I8dP   I8dP    dP"  "Y8I  I8dP" "8I 
--      88      ,8P  88   ,8'  Yb   I8   8I   8I   8I   88   I8P    I8P    i8'    ,8I  I8P    I8 
--      88_____,d8'_,88,_,8'_   8) ,dP   8I   8I   Yb,_,88,_,d8b,_ ,d8b,_ ,d8,   ,d8b,,d8     I8,
--     88888888P"  8P""Y8P' "YY8P8P8P'   8I   8I   `Y88P""Y88P'"Y888P'"Y88P"Y8888P"`Y888P     `Y8
--
--                                                                                             ]],
--       },			-- item field formatters
-- 			formats = {
-- 				icon = function(item)
-- 					if item.file and item.icon == "file" or item.icon == "directory" then
-- 						return M.icon(item.file, item.icon)
-- 					end
-- 					return { item.icon, width = 2, hl = "icon" }
-- 				end,
-- 				footer = { "%s", align = "center" },
-- 				header = { "%s", align = "center" },
-- 				file = function(item, ctx)
-- 					local fname = vim.fn.fnamemodify(item.file, ":~")
-- 					fname = ctx.width and #fname > ctx.width and vim.fn.pathshorten(fname) or fname
-- 					if #fname > ctx.width then
-- 						local dir = vim.fn.fnamemodify(fname, ":h")
-- 						local file = vim.fn.fnamemodify(fname, ":t")
-- 						if dir and file then
-- 							file = file:sub(-(ctx.width - #dir - 2))
-- 							fname = dir .. "/…" .. file
-- 						end
-- 					end
-- 					local dir, file = fname:match("^(.*)/(.+)$")
-- 					return dir and { { dir .. "/", hl = "dir" }, { file, hl = "file" } } or { { fname, hl = "file" } }
-- 				end,
-- 			},
-- 			sections = {
-- 				{ section = "header" },
-- 				{ section = "keys", gap = 1, padding = 1 },
-- 				{ section = "startup" },
-- 			},
-- 		},
-- 		indent = { enabled = true },
-- 		input = { enabled = false },
-- 		notifier = {
-- 			enabled = false,
-- 			timeout = 3000,
-- 		},
-- 		quickfile = { enabled = false},
-- 		scroll = { enabled = false },
-- 		statuscolumn = { enabled = false},
-- 		words = { enabled = false },
-- 		styles = {
-- 			notification = {
-- 				-- wo = { wrap = true } -- Wrap notifications
-- 			},
-- 		},
-- 	},
}
