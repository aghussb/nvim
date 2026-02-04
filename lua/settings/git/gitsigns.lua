local settings = {}

--TODO: trying config gitsign in : https://www.lazyvim.org/plugins/editor
settings.opts = {
	signs = {
		add = { text = "▎" },
		change = { text = "▎" },
	},
	signs_staged = {
		add = { text = "▎" },
		change = { text = "▎" },
	},
}

settings.enabled = vim.fn.isdirectory(".git") == 1

return settings
