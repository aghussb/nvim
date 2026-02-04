local M = {}
local os_name = vim.uv.os_uname().sysname

M.is_mac = os_name == "Darwin"
M.is_linux = os_name == "Linux"
M.is_windows = os_name == "Windows_NT"
M.is_wsl = vim.fn.has("wsl") == 1

M.capslock_indicator = function()
	local handle = io.popen("xset q | grep Caps | awk '{print $4}'")

	if handle == nil then
		return
	end

	local result = handle:read("*a")
	handle:close()

	if result:match("on") then
		return "CAPSLOCK"
	else
		return ""
	end
end

M.clipboard = function()
	return {
		name = "xsel_override",
		copy = {
			["+"] = "xsel --input --clipboard",
			["*"] = "xsel --input --primary",
			['"'] = "xsel --input --primary",
		},
		paste = {
			["+"] = "xsel --output --clipboard",
			["*"] = "xsel --output --primary",
			['"'] = "xsel --output --primary",
		},
		cache_enabled = 1,
	}
end

M.load = function()
	local g = vim.g

	g.clipboard = M.clipboard()
end

return M
