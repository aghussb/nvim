local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	filetype = "svelte",
	snippets = {
		s("c-Inspect", {
			t({ "$inspect(" }),
			i(1, "Enter Value"),
			t(")"),
		}),
	},
	scoped = {
		{
			filetype = "typescript",
			snippets = {
				s("c-RequestHandler", {
					t("export const"),
					i(1, "Enter Methods"),
					t("handle = async ("),
					i(2, "Enter Parameters"),
					t({ ") => {", "" }),
					i(3, "Enter Code"),
					t({ "", "};" }),
				}),
			},
		},
	},
}
