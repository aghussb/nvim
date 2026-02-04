local settings = {}

settings.opts = {
	cmdline = {
		keymap = { preset = "inherit" },
		completion = {
			list = {
				selection = { preselect = false, auto_insert = true },
			},
			menu = { auto_show = true },
		},
	},
	snippets = {
		preset = "luasnip",
		score_offset = 1,
	},
	keymap = {
		preset = "default",
		["<Tab>"] = { "select_next", "fallback" },
		["<S-Tab>"] = { "select_prev", "fallback" },
		["<C-Right>"] = { "snippet_forward", "fallback" },
		["<C-Left>"] = { "snippet_backward", "fallback" },
		["<CR>"] = {
			function(cmp)
				local cmd_type = vim.fn.getcmdtype()
				if cmd_type ~= "" then
					return cmp.accept_and_enter()
				else
					return cmp.accept()
					-- return require("blink.cmp")["accept"]()
				end
			end,
			"fallback",
		},
	},
	appearance = {
		nerd_font_variant = "mono",
	},
	completion = {
		list = {
			selection = { preselect = false, auto_insert = false },
		},
		-- ghost_text = {
		-- 	enabled = true,
		-- },
		menu = {
			-- border = "single",
			auto_show = true,
			draw = {
				columns = {
					{
						"label",
						"label_description",
						gap = 1,
					},
					{
						"kind_icon",
						"kind",
						gap = 1,
					},
				},
			},
		},
		documentation = {
			window = { border = "single" },
			auto_show = false,
			-- auto_show_delay_ms = 200,
		},
	},
	sources = {
		-- compat = {},
		default = { "lsp", "path", "snippets", "buffer" },
		providers = {
			-- snippets = {
			-- 	max_items = 5,
			-- },
			-- lsp = {
			-- 	name = "LSP",
			-- 	module = "blink.cmp.sources.lsp",
			-- 	fallbacks = { "buffer" },
			-- 	async = true,
			-- 	timeout_ms = 700,
			-- },
		},
		transform_items = function(ctx, items)
			if not ctx.seen_labels then
				ctx.seen_labels = {}
			end
			if not ctx.seen_sources then
				ctx.seen_sources = {}
			end
			local function filter(item)
				if item.label and ctx.seen_labels[item.label] then
					return false
				end
				ctx.seen_labels[item.label] = true
				ctx.seen_sources[item.source_id] = true
				return true
			end
			return vim.iter(items):filter(filter):totable()
		end,
	},
	fuzzy = {
		implementation = "prefer_rust_with_warning",
		use_proximity = false,
		sorts = {
			"exact",
			"score",
			"label",
			"sort_text",
		},
	},
}

return settings
