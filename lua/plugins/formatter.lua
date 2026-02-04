return {
	"stevearc/conform.nvim",
	event = {
		"LspAttach",
		"BufReadPost",
	},
	opts = require("settings.formatter.conform").opts,
	keys = require("settings.formatter.conform").keys,
}
