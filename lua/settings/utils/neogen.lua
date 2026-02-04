local settings = {}

settings.opts = {
	snippet_engine = "luasnip",
}

settings.keys = {
	{
		"grg",
		function()
			require("neogen").generate()
		end,
		desc = "Generate Neogen",
		mode = { "n", "v" },
	},
}

return settings
