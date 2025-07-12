return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false, -- Make this plugin load on startup
	dependencies = {
		"nvim-tree/nvim-web-devicons", -- Required for icons
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 20,
			},
			renderer = {
				group_empty = true,
			},
		})
	end,
}
