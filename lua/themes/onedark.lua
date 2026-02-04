local M = {}

M.mini_starter = function()
	vim.api.nvim_set_hl(0, "MiniStarterFooter", { fg = "#98c379", bold = true })
end

M.matchup = function()
	vim.g.matchup_matchparen_offscreen = {
		-- method = "status_manual",
		method = "popup",
		fullwidth = 1,
	}
end

M.lualine = function()
	local globals = require("core.globals")
	require("lualine").setup({
		options = {
			theme = "onedark",
			component_separators = { left = "", right = "" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = {
				{
					function()
						return globals.capslock_indicator()
					end,
					colored = true,
					separator = {
						left = "",
					},
					color = {
						fg = "#1a212e",
						bg = "#f65866",
						gui = "bold",
					},
				},
				{
					function()
						return ""
					end,
					draw_empty = true,
					separator = { left = "", right = "" },
					color = {
						fg = "#93a4c3",
						bg = "#21283b",
					},
				},
				"encoding",
				"fileformat",
				"filetype",
			},
		},
	})
end

M.load = function()
	M.mini_starter()
	M.matchup()
	M.lualine()
end

M.load()
