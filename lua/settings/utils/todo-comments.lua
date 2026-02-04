local configs = require("configs")

local settings = {}

settings.opts = {
	signs = true,
	sign_priority = 8,
	keywords = configs.todo_comments,
	gui_style = {
		fg = "NONE",
		bg = "BOLD",
	},
	merge_keywords = false,
	highlight = {
		multiline = true, -- enable multine todo comments
		multiline_pattern = "^.", -- lua pattern to match the next multiline from the start of the matched keyword
		multiline_context = 10, -- extra lines that will be re-evaluated when changing a line
		before = "", -- "fg" or "bg" or empty
		keyword = "wide", -- "fg", "bg", "wide", "wide_bg", "wide_fg" or empty. (wide and wide_bg is the same as bg, but will also highlight surrounding characters, wide_fg acts accordingly but with fg)
		after = "fg", -- "fg" or "bg" or empty
		pattern = [[.*<(KEYWORDS)\s*:]], -- pattern or table of patterns, used for highlighting (vim regex)
		comments_only = true, -- uses treesitter to match keywords in comments only
		max_line_len = 400, -- ignore lines longer than this
		exclude = {}, -- list of file types to exclude highlighting
	},
	-- list of named colors where we try to extract the guifg from the
	-- list of highlight groups or use the hex color if hl not found as a fallback
	colors = {
		error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
		warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
		info = { "DiagnosticInfo", "#2563EB" },
		hint = { "DiagnosticHint", "#10B981" },
		default = { "Identifier", "#7C3AED" },
		bar = { "Identifier", "#FF00FF" },
	},
	search = {
		command = "rg",
		pattern = [[\b(KEYWORDS):]], -- ripgrep regex
	},
}

settings.keys = {
	{
		"<leader>ft",
		function()
			local keywords = configs.todo_comments
			local labels = {}

			for key, value in pairs(keywords) do
				table.insert(labels, key)

				if value.alt then
					for _, alt in ipairs(value.alt) do
						table.insert(labels, alt)
					end
				end
			end

			require("fzf-lua").grep({
				search = "\\b(" .. table.concat(labels, "|") .. "):",
				prompt = "TODO COMMENTS > ",
				no_esc = true,
			})
		end,
		desc = "Find ALL files (ignore nothing)",
	},
}

return settings
