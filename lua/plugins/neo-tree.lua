return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = false, -- hide filtered items on open
				-- hide_gitignored = true,
				hide_dotfiles = false,
				-- hide_by_name = {
				-- 	".github",
				-- 	".gitignore",
				-- 	"package-lock.json",
				-- 	".changeset",
				-- 	".prettierrc.json",
				-- },
				-- never_show = { ".git" },
			},
		},
	},
	config = function(_,opts)
    require("neo-tree").setup(opts)
		vim.keymap.set("n", "<leader>e", ":Neotree filesystem toggle left<CR>", {})
	end,
}
