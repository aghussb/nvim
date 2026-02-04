local settings = {}

settings.opts = {
	linters_by_ft = {},
}

settings.config = function(_, opts)
	local lint = require("lint")

	lint.linters_by_ft = opts.linters_by_ft

	lint.linters.eslint_d = require("lint.util").wrap(lint.linters.eslint_d, function(diagnostic)
		-- try to ignore "No ESLint configuration found" error
		-- if diagnostic.message:find("Error: No ESLint configuration found") then -- old version
		-- update: 20240814, following is working
		if diagnostic.message:find("Error: Could not find config file") then
			return nil
		end
		return diagnostic
	end)

	vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave", "BufReadPost" }, {
		group = vim.api.nvim_create_augroup("lint", { clear = true }),
		callback = function()
			lint.try_lint()
		end,
	})

	lint.try_lint()

	vim.api.nvim_create_user_command("LintInfo", function()
		local filetype = vim.bo.filetype

		local linters_by_ft = lint.linters_by_ft
		local linters = lint.linters

		print("linters_by_ft = " .. vim.inspect(lint.linters_by_ft))
		print("linters = " .. vim.inspect(linters))

		if linters_by_ft[filetype] then
			print("Linters for " .. filetype .. ": " .. table.concat(linters_by_ft[filetype], ", "))
		else
			print("No linters configured for filetype: " .. filetype)
		end
	end, {})
end

return settings
