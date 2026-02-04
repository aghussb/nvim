local folder = "snippets"
local path = vim.fn.stdpath("config") .. "/lua/" .. folder

local DEFAULT_CHECK = false

local M = {}

M.configs = {}

M.get_modules = function()
	local modules = vim.fn.readdir(path)
	if not modules then
		vim.notify("Failed to read dir: " .. path, vim.log.levels.ERROR)
		return {}
	end
	return modules
end

M.load = function()
	local modules = M.get_modules()

	for _, module in ipairs(modules) do
		if module:match("%.lua$") then
			local modname = folder .. "." .. module:gsub("%.lua$", "")
			M.configs.modaname = modname
			local ok, configs = pcall(require, modname)
			if ok then
				M.setup(configs)
			end
		end
	end
end

M.setup = function(configs)
	local filetype = configs.filetype

	if filetype == nil then
		M.error_empty_column("filetype")
		return
	end

	local snippets = configs.snippets or {}

	if next(snippets) == nil then
		M.error_empty_column("snippets")
		return
	end

	local check = configs.check or DEFAULT_CHECK
	local scoped = configs.scoped or {}

	if check then
		M.autocmd(filetype, filetype, snippets)
	else
		M.register(filetype, snippets)
	end

	if next(scoped) then
		for _, value in ipairs(scoped) do
			value.snippets = value.snippets or {}
			if value.filetype == nil or value.filetype == "" then
				M.error_empty_column("scoped.filetype")
				break
			elseif next(value.snippets) == nil then
				M.error_empty_column("scoped.snippets")
				break
			else
				M.autocmd(filetype, value.filetype, value.snippets)
			end
		end
	end
end

M.register = function(filetype, snippets)
	require("luasnip").add_snippets(filetype, snippets)
end

M.autocmd = function(pattern, filetype, snippets)
	vim.api.nvim_create_autocmd("FileType", {
		pattern = pattern,
		callback = function()
			M.register(filetype, snippets)
		end,
	})
end

M.error_empty_column = function(column)
	vim.notify("file: " .. M.configs.modname .. " column: `" .. column .. "` can't be empty!", vim.log.levels.ERROR)
end

return M
