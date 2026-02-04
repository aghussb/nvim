local settings = {}

settings.config = function()
	require("mason").setup()

	local configs = require("configs")

	vim.api.nvim_create_user_command("MasonRegistryInstall", function()
		local registry = require("mason-registry")

		local function install_package(pkg_name)
			local ok, pkg = pcall(registry.get_package, pkg_name)
			if ok and not pkg:is_installed() then
				pkg:install()
				vim.notify("Installing: " .. pkg_name, vim.log.levels.INFO)
			elseif ok then
				vim.notify(pkg_name .. " is already installed", vim.log.levels.DEBUG)
			else
				vim.notify("Package not found: " .. pkg_name, vim.log.levels.ERROR)
			end
		end

		for _, name in
			ipairs(vim.iter({ configs.lsp, configs.dap, configs.linter, configs.formatter }):flatten():totable())
		do
			install_package(name)
		end
	end, {})
end

return settings
