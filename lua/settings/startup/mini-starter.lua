local settings = {}

settings.config = function()
	local configs = require("configs")

	local starter = require("mini.starter")

	starter.setup({
		evaluate_single = true,
		header = table.concat(configs.dashboard_header, "\n"),
		items = {
			{ name = "Select", action = "FzfLuaSessions", section = "Session" },
			{ name = "Open last", action = "SessionLoadLast", section = "Session" },
			{ name = "Lazy", action = "Lazy", section = "Other" },
			{ name = "Quit", action = "qa", section = "Other" },
		},
		-- footer = configs.dashboard_footer,
	})

	vim.api.nvim_create_autocmd("User", {
		pattern = "LazyVimStarted",
		callback = function(ev)
			---@diagnostic disable-next-line: different-requires
			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			local pad_footer = string.rep(" ", 8)
			starter.config.footer = configs.dashboard_footer
				.. "\n\n\n\n"
				.. pad_footer
				.. "⚡ Neovim loaded "
				.. stats.count
				.. " plugins in "
				.. ms
				.. "ms"
			if vim.bo[ev.buf].filetype == "ministarter" then
				pcall(starter.refresh)
			end
		end,
	})
end
return settings
