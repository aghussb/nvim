local settings = {}

settings.opts = {
	symbol = "│",
}

settings.config = function(_, opts)
	opts.draw = {
		delay = 0,
		animation = require("mini.indentscope").gen_animation.none(),
	}

	require("mini.indentscope").setup(opts)
end

return settings
