local load_core = function()
	require("core.options")
	require("core.autocmds")
	require("core.globals").load()
	require("core.keymaps")

	require("core.lazy")

	require("core.skeleton").load()
	require("core.themes")
end

load_core()
