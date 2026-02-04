local settings = {}

settings.opts = {
	preset = "ghost",
	transparent_bg = true, -- Set the background of the diagnostic to transparent
	transparent_cursorline = true, -- Set the background
	multilines = {
		enabled = true,
	},
	options = {
		show_source = {
			enabled = false,
			if_many = false,
		},
		overwrite_events = { "DiagnosticChanged" },
	},
	signs = {
		left = "",
		right = "",
		arrow = "",
	},
}

return settings
