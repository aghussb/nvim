local M = {}

M.matchup = function()
	vim.g.matchup_matchparen_offscreen = {
		method = "popup",
		position = "cursor",
	}
end

M.lualine = function()
	local globals = require("core.globals")

	local custom = require("lualine.themes.16color")

	custom.normal.b = {
		gui = "bold",
	}

	require("lualine").setup({
		options = {
			theme = custom,
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = {
				{
					function()
						return globals.capslock_indicator()
					end,
					color = {
						fg = "#f65866",
						gui = "bold",
					},
				},
				"encoding",
				"fileformat",
				"filetype",
			},
		},
	})
end

M.default = function()
	vim.api.nvim_set_hl(0, "Error", { fg = "red", bg = "none", bold = true })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "red", bg = "none", bold = true })
end

M.load = function()
	M.default()
	M.matchup()
	M.lualine()
end

M.load()
