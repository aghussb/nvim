local settings = {}

settings.opts = {
	fzf_colors = true,
	fzf_opts = {
		["--no-scrollbar"] = true,
		["--keep-right"] = true,
	},
	winopts = {
		fullscreen = true,
		border = "none",
		preview = {
			layout = "vertical",
			vertical = "up:70%",
			border = "none",
		},
	},
	lsp = {
		code_actions = {
			previewer = vim.fn.executable("delta") == 1 and "codeaction_native" or nil,
			silent = true,
		},
	},
}

settings.keys = {
	{ "grd", ":FzfLua lsp_definitions<CR>", desc = "Go Definition" },
	{ "gri", ":FzfLua lsp_implementations<CR>", desc = "Go Implementations" },
	{ "grr", ":FzfLua lsp_references<CR>", desc = "References" },
	{ "gra", ":FzfLua lsp_code_actions<CR>", mode = { "n", "x" }, desc = "LSP code action" },
	{ "<leader><leader>", ":FzfLua buffers <CR>", mode = { "n", "x" }, desc = "Open buffer picker" },
	{ "<leader>sa", ":FzfLua diagnostics_document<CR>", desc = "Show All Diagnostic" },
	{ "<leader>fl", ":FzfLua filetypes<CR>", desc = "Change Language" },
	{ "<leader>fy", ":FzfLua registers<CR>", desc = "Yank History" },
	{ "<leader>fh", ":FzfLua helptags<CR>", desc = "Help" },
	{ "<leader>fc", ":FzfLua command_history<CR>", desc = "Command History" },
	{ "<leader>fb", ":FzfLua blines<CR>", desc = "Fuzzy find in current buffer" },
	{ "<leader>fs", ":FzfLua lsp_document_symbols<CR>", desc = "Search document symbols (LSP)" },
	{
		"<leader>fa",
		function()
			require("fzf-lua").files({ hidden = true, no_ignore = true, follow = true })
		end,
		desc = "Find ALL files (ignore nothing)",
	},
	{
		"<leader>fg",
		function()
			local configs = require("configs")
			require("fzf-lua").live_grep({
				rg_opts = "--column --line-number --no-heading --color=always --smart-case "
					.. table.concat(configs.rg_rules, " "),
			})
		end,
		desc = "Search document symbols (LSP)",
	},
	{
		"<leader>ff",
		function()
			local configs = require("configs")
			require("fzf-lua").files({
				cmd = "rg --files --hidden " .. table.concat(configs.rg_rules, " "),
			})
		end,
		desc = "Find files",
	},
}

return settings
