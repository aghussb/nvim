local settings = {}

settings.opts = {
	log_level = vim.log.levels.DEBUG,
	-- format_on_save = {
	-- 	timeout_ms = 1000,
	-- 	lsp_format = "fallback",
	-- 	lsp_fallback = true,
	-- },
	-- format_after_save = {
	-- 	async = true,
	-- 	lsp_format = "fallback",
	-- },
}

settings.keys = {
	{
		"<C-f>",
		function()
			vim.cmd([[:g/^\n$/normal! "_dd]])
			vim.cmd([[:noh]])
			require("conform").format({ lsp_fallback = true, async = true, timeout_ms = 500 })
		end,
		mode = { "n", "i" },
		desc = "Format file (Conform)",
	},
}

return settings
