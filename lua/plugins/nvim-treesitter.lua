return 	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate", -- This command will update/install parsers
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "lua", "vim", "vimdoc", "query", "javascript", "typescript", "css" },

				sync_install = false,
				auto_install = true,

				highlight = {
					enable = true,
					disable = { "html" },
					additional_vim_regex_highlighting = false,
				},
				indent = { enable = true },
			})
		end,
	}

