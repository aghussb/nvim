return {
	"shellRaining/hlchunk.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("hlchunk").setup({
			chunk = {
				enable = true,
				delay = 100,
				-- ...
			},
			indent = {
				enable = true,
				-- ...
			},
		})
	end,
}
