local settings = {}

settings.init = function()
	vim.g.matchup_matchparen_offscreen = {
		-- method = "status_manual",
		method = "popup",
		-- fullwidth = 1,
		position = "cursor",
	}
end

return settings
