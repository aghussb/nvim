local settings = {}

settings.opts = {
	diagnostics = {
		float = {
			header = "",
			prefix = " 󰊠 ",
		},
		virtual_text = false,
		virtual_lines = false,
		-- virtual_text = {
		-- 	current_line = true,
		-- 	spacing = 2,
		-- 	prefix = "●",
		-- },
		-- virtual_lines = {
		-- 	current_line = true,
		-- },
		signs = {
			active = true,
			text = {
				[vim.diagnostic.severity.ERROR] = "",
				[vim.diagnostic.severity.WARN] = "",
				[vim.diagnostic.severity.HINT] = "󰌵",
				[vim.diagnostic.severity.INFO] = "",
			},
		},
		underline = false,
		-- update_in_insert = false,
		-- severity_sort = true,
	},
	servers = {},
}

settings.config = function(_, opts)
	vim.diagnostic.config(opts.diagnostics)

	vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
		callback = function()
			vim.diagnostic.open_float(nil, { focus = false })
		end,
	})

	for key, value in pairs(opts.servers) do
		if value.capabilities then
			value.capabilities = require("blink.cmp").get_lsp_capabilities(value.capabilities)
		else
			value.capabilities = require("blink.cmp").get_lsp_capabilities()
		end

		if value.before_init then
			value = value.before_init(value)
			value.before_init = nil
		end

		vim.lsp.config(key, value)

		if value.enable ~= false then
			vim.lsp.enable(key)
		end
	end
end

settings.keys = {
	{
		"<C-s>",
		function()
			vim.lsp.buf.hover()
		end,
		desc = "Show Function Hover",
		mode = { "n", "i" },
	},
	{
		"<C-e>",
		function()
			vim.diagnostic.open_float(nil, { focus = true })
		end,
		desc = "Show Error Hover",
		mode = { "n", "i" },
	},
}

return settings
