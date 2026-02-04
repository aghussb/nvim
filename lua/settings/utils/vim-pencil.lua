local settings = {}

settings.init = function()
	vim.g["pencil#wrapModeDefault"] = "soft"
end

settings.keys = {
	{ "<leader>p", ":PencilToggle<CR>", desc = "Activate Pencil Toggle" },
}

return settings
