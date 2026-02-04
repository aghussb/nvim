local configs = {}

configs.colorscheme = "wildcharm"

configs.lsp = {
	"css-lsp",
	"docker-compose-language-service",
	"dockerfile-language-server",
	"html-lsp",
	"json-lsp",
	"lua-language-server",
	"marksman",
	"prisma-language-server",
	"svelte-language-server",
	"tailwindcss-language-server",
	"typescript-language-server",
	"yaml-language-server",
	"vtsls",
	"gopls",
	"impl",
	"sqlls",
	"phpactor",
	"intelephense",
}

configs.dap = {}

configs.linter = {
	"eslint_d",
	"hadolint",
	"luacheck",
	"jsonlint",
	"sqlfluff",
	"phpcs",
}

configs.formatter = {
	"prettier",
	"prettierd",
	"stylua",
	"fixjson",
	"yamlfmt",
	"biome",
	"goimports",
	"gofumpt",
	"gomodifytags",
	"php-cs-fixer",
}

configs.treesitter = {
	"bash",
	"c",
	"vim",
	"vimdoc",
	"diff",
	"css",
	"dockerfile",
	"html",
	"javascript",
	"json",
	"jsonc",
	"lua",
	"markdown",
	"markdown_inline",
	"prisma",
	"query",
	"svelte",
	"tsx",
	"typescript",
	"yaml",
	"sql",
	"php",
}

configs.rg_rules = {
	"--ignore",
	"--glob !.git/",
	"--glob !node_modules/",
	"--glob !.svelte-kit/",
}

configs.todo_comments = {
	FIX = { icon = " ", color = "error", alt = { "BUG", "FIX ISSUE" } },
	TODO = { icon = " ", color = "info" },
	HACK = { icon = " ", color = "warning" },
	WARNING = { icon = " ", color = "warning" },
	PERFORMANCE = { icon = " ", alt = { "REFACTOR", "OPTIMIZE" } },
	NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
}

-- Set the dashboard startup image here
-- You can generate the ascii image using: https://github.com/TheZoraiz/ascii-image-converter
-- More info: https://github.com/ayamir/nvimdots/wiki/Issues#change-dashboard-startup-image
---@type string[]
configs.dashboard_header = {
	[[ ,ggggggggggg,]],
	[[dP"""88""""""Y8,                                          ,dPYb, ,dPYb,             ,dPYb,]],
	[[Yb,  88      `8b                                          IP'`Yb IP'`Yb             IP'`Yb]],
	[[ `"  88      ,8P  gg                                 gg   I8  8I I8  8I             I8  8I]],
	[[     88aaaad8P"   ""                                 ""   I8  8' I8  8'             I8  8']],
	[[     88""""Y8ba   gg     ,g,      ,ggg,,ggg,,ggg,    gg   I8 dP  I8 dP    ,gggg,gg  I8 dPgg,]],
	[[     88      `8b  88    ,8'8,    ,8" "8P" "8P" "8,   88   I8dP   I8dP    dP"  "Y8I  I8dP" "8I]],
	[[     88      ,8P  88   ,8'  Yb   I8   8I   8I   8I   88   I8P    I8P    i8'    ,8I  I8P    I8]],
	[[     88_____,d8'_,88,_,8'_   8) ,dP   8I   8I   Yb,_,88,_,d8b,_ ,d8b,_ ,d8,   ,d8b,,d8     I8,]],
	[[    88888888P"  8P""Y8P' "YY8P8P8P'   8I   8I   `Y88P""Y88P'"Y888P'"Y88P"Y8888P"`Y888P     `Y8]],
}

-- configs.dashboard_header = {
-- 	[[┓ •    •┓┓  ┓   ┓ •      ┓            •      ┓ •]],
-- 	[[┣┓┓┏┏┳┓┓┃┃┏┓┣┓  ┣┓┓┏┓┏┓┏┓┣┓┏┳┓┏┓┏┓  ┏┓┓┏┓┏┓┏┓┣┓┓┏┳┓]],
-- 	[[┗┛┗┛┛┗┗┗┗┗┗┻┛┗  ┛┗┗┛ ┛ ┗┻┛┗┛┗┗┗┻┛┗  ┛┗┗┛ ┛ ┗┻┛┗┗┛┗┗]],
-- }

configs.dashboard_footer = "Don't Stop Until You are Proud...  "

return configs
