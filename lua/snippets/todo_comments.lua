local todo_comments = {}

function todo_comments.snippet(label)
	local ls = require("luasnip")
	local s = ls.snippet
	local t = ls.text_node
	local events = require("luasnip.util.events")

	return s("c-" .. vim.iter(vim.split(label, " ")):join("-"), {
		t(label .. ":  "),
	}, {
		callbacks = {
			[-1] = {
				[events.pre_expand] = function()
					vim.schedule(function()
						vim.cmd([[normal gcc]])
						vim.cmd([[normal f:2l]])
					end)
				end,
			},
		},
	})
end

function todo_comments.load()
	local keywords = require("configs").todo_comments
	local snippets = {}

	for key, value in pairs(keywords) do
		table.insert(snippets, todo_comments.snippet(key))

		if value.alt then
			for _, alt in ipairs(value.alt) do
				table.insert(snippets, todo_comments.snippet(alt))
			end
		end
	end

	return snippets
end

return {
	filetype = "all",
	snippets = todo_comments.load(),
}
