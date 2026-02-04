local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
	filetype = "markdown",
	snippets = {
		s("prop", {
			t({ "---", "" }),
			i(1, "Key"), -- Input pertama
			t({ " : " }),
			i(2, "Value"), -- Input kedua
			t({ "", "---" }),
			i(0), -- Akhiran: posisi akhir kursor
		}),
		s("addProp", {
			i(1, "Key"), -- Input pertama
			t({ " : " }),
			i(2, "Value"), -- Input kedua
			i(0), -- Akhiran: posisi akhir kursor
		}),
	},
}
