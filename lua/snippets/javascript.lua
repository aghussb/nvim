local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
	filetype = "javascript",
	snippets = {
		s("debgCli", {
			t('console.log("\\x1b[30m\\x1b[46m%s\\x1b[0m\\x1b[30m\\x1b[42m%s\\x1b[0m", " '),
			f(function()
				return vim.fn.expand("%:t") -- Mengambil nama file saat ini
			end),
			t(' : ", " '),
			f(function()
				return tostring(vim.fn.line("."))
			end),
			t(' ", '),
			i(1, "Enter Code"), -- Placeholder untuk kode
			t(',"\\n");'),
		}),
		s("debgWeb", {
			t('console.log("%c '),
			f(function()
				return vim.fn.expand("%:t") -- Mengambil nama file saat ini
			end),
			t(" : %c "),
			f(function()
				return tostring(vim.fn.line("."))
			end),
			t(' ",'),
			t(
				'"color: black; background-color: cyan; padding: 2px;","color: black; background-color: green; padding: 2px;",'
			),
			i(1, "Enter Code"), -- Placeholder untuk kode
			t(")"),
		}),
		s({ trig = "afb", desc = "arrow function body" }, {
			t("("),
			i(1, "Enter Param"),
			t({ ") => {", "" }),
			i(2, "Enter Code"),
			t({ "", "}" }),
		}),
		s({ trig = "asfb", desc = "async arrow function body" }, {
			t("async ("),
			i(1, "Enter Param"),
			t({ ") => {", "" }),
			i(2, "Enter Code"),
			t({ "", "}" }),
		}),
		s({ trig = "ao", desc = "arrow object" }, {
			t("("),
			i(1, "Enter Param"),
			t({ ") => ({", "" }),
			i(2, "Enter Code"),
			t({ "", "})" }),
		}),
	},
}
