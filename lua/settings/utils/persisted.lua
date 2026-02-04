local settings = {}

settings.opts = {
	save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"),
	use_git_branch = true,
	autosave = true,
}

settings.config = function(_, opts)
	local function parse_session_file(session_path, base_name)
		local buffers = {}

		for line in io.lines(vim.fn.expand(session_path)) do
			local path = line:match("^badd%s+%+%d+%s+(.+)")
			if path then
				if path:sub(1, #base_name) == base_name then
					path = path:sub(#base_name + 1)
				end
				table.insert(buffers, path)
			end
		end

		return buffers
	end

	local function get_sessions()
		local persisted = require("persisted")
		local sessions = persisted.list()
		local found = {}
		local items = {}

		for _, session in pairs(sessions) do
			if vim.uv.fs_stat(session) then
				local save_dir = opts.save_dir
				local file = session:sub(#save_dir + 1, -5)
				local dir, branch = unpack(vim.split(file, "@@", { plain = true }))
				dir = dir:gsub("%%", "/")
				if jit.os:find("Windows") then
					dir = dir:gsub("^(%w)/", "%1:/")
				end

				local name = vim.fn.fnamemodify(dir, ":p:~")

				if not found[dir .. (branch or "")] then
					local buffers = parse_session_file(session, name)

					items[name] = {
						dir = dir,
						name = name,
						branch = branch,
						buffers = buffers,
					}

					found[dir .. (branch or "")] = true
				end
			end
		end

		return items
	end

	local function create_fzf_entry_list(items)
		local fzf_lua = require("fzf-lua")
		return function(cb)
			for _, item in pairs(items) do
				local entry = item.branch
						and string.format(
							"%s  %s %s",
							fzf_lua.utils.ansi_codes.blue(""),
							fzf_lua.path.HOME_to_tilde(item.name),
							fzf_lua.utils.ansi_codes.red(" " .. item.branch)
						)
					or string.format(
						"%s  %s",
						fzf_lua.utils.ansi_codes.blue(""),
						fzf_lua.path.HOME_to_tilde(item.name)
					)

				cb(entry)
			end
			cb(nil)
		end
	end

	local function load_selected_session(selected, items)
		local session = selected[1]:match("(~.*/)")
		local item = items[session]
		if item then
			local persisted = require("persisted")
			persisted.fire("SelectPre")
			vim.fn.chdir(item.dir)
			persisted.load()
			persisted.fire("SelectPost")
		end
	end

	vim.api.nvim_create_user_command("FzfLuaSessions", function()
		local items = get_sessions()
		local fzf_lua = require("fzf-lua")

		local optsfzf = {
			prompt = "Sessions> ",
			preview = {
				field_index = "{2}",
				fn = function(s)
					return items[s[1]] and items[s[1]].buffers or {}
				end,
			},
			actions = {
				["default"] = function(selected, _)
					load_selected_session(selected, items)
				end,
			},
		}

		local entry_list = create_fzf_entry_list(items)
		fzf_lua.fzf_exec(entry_list, optsfzf)
	end, {})
end

return settings
