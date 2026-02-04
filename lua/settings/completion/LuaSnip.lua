local settings = {}

settings.opts = {
	filetype_extend = {},
}

settings.config = function(_, opts)
	local luasnip = require("luasnip")

	for key, value in pairs(opts.filetype_extend) do
		luasnip.filetype_extend(key, value)
	end

	luasnip.config.set_config({
		history = true,
		enable_autosnippets = true,
	})

	require("luasnip.loaders.from_vscode").lazy_load()

	require("core.snippets").load()

	-- use skeleton if from luasnip
	-- require("core.skeleton").load()
end

return settings
