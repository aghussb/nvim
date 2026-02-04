local folder = "skeletons"
local path = vim.fn.stdpath("config") .. "/lua/" .. folder

local DEFAULT_EVENTS = "BufReadPost"

local M = {}

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
			M.modaname = modname
			local ok, configs = pcall(require, modname)
			if ok then
				M.setup(configs)
			end
		end
	end
end

M.setup = function(configs)
	for _, value in pairs(configs) do
		if value.pattern == nil then
			M.error_empty_column("pattern")
			break
		end

		if value.template == nil then
			M.error_empty_column("template")
			break
		end

		local events = value.events or DEFAULT_EVENTS
		local pattern = value.pattern
		local template = value.template

		M.autocmd(events, pattern, template)
	end
end

M.autocmd = function(events, pattern, template)
	vim.api.nvim_create_autocmd(events, {
		pattern = pattern,
		callback = function()
			if vim.fn.line("$") == 1 and vim.fn.getline(1) == "" then
				M.generate(template)
			end
		end,
	})
end

M.generate = function(template)
	vim.api.nvim_buf_set_lines(0, 0, -1, false, template)
	-- require("luasnip").snip_expand(template)
end

M.error_empty_column = function(column)
	vim.notify("file: " .. M.modname .. " column: `" .. column .. "` can't be empty!", vim.log.levels.ERROR)
end

return M
