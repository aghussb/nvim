local settings = {}

settings.opts = {
	highlights = {
		fill = {
			bg = require("onedark.palette").deep.bg0,
		},
		-- background = {
		-- 	bg = colors.bg0,
		-- },
		-- buffer_selected = {
		-- 	fg = colors.fg,
		-- 	bg = colors.bg0,
		-- 	bold = true,
		-- },
		-- tab_selected = {
		-- 	fg = colors.fg,
		-- 	bg = colors.bg0,
		-- },
	},
	options = {
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		separator_style = "thin",
		diagnostics = "nvim_lsp",
	},
}

settings.config = function()
	local colors = require("onedark.palette").deep

	require("bufferline").setup({
		highlights = {
			fill = {
				bg = colors.bg0,
			},
			-- background = {
			-- 	bg = colors.bg0,
			-- },
			-- buffer_selected = {
			-- 	fg = colors.fg,
			-- 	bg = colors.bg0,
			-- 	bold = true,
			-- },
			-- tab_selected = {
			-- 	fg = colors.fg,
			-- 	bg = colors.bg0,
			-- },
		},
		options = {
			always_show_bufferline = false,
			show_buffer_close_icons = false,
			show_close_icon = false,
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					highlight = "Directory",
					separator = true,
				},
			},
		},
	})
end

settings.keys = {
	{ "<Tab><Right>", ":bnext<CR>", desc = "Go to next buffer" },
	{ "<Tab><Left>", ":bprevious<CR>", desc = "Go to previous buffer" },
	{ "<Tab>w", ":bd<CR>", desc = "Close current buffer" },
	{ "<Tab>wo", ":BufferLineCloseOthers<CR>", desc = "Force close other buffer" },
	{ "<Tab>wf", ":bd!<CR>", desc = "Force close current buffer" },
	{ "<Tab>wr", ":BufferLineCloseRight<CR>", desc = "Close buffers to the right" },
	{ "<Tab>wl", ":BufferLineCloseLeft<CR>", desc = "Close buffers to the left" },
}

return settings
