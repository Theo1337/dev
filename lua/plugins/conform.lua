return {
	"stevearc/conform.nvim",
	lazy = false, -- Make sure conform loads on startup
	-- Optional: Define a keymap to manually trigger formatting
	keys = {
		{
			"<leader>fm", -- Example keymap: <Leader> (usually '\') followed by 'fm'
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "", -- Applies to Normal, Visual, Select modes
			desc = "Format buffer",
		},
	},
	opts = {
		-- This is the critical part: mapping filetypes to formatters
		formatters_by_ft = {
			-- For JavaScript, use Prettier
			javascript = { "prettier" },
			-- For TypeScript, use Prettier
			typescript = { "prettier" },
			-- For React/JSX, use Prettier
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			-- For CSS, use Prettier
			css = { "prettier" },
			-- For HTML, use Prettier
			html = { "prettier" },
			-- For JSON, use Prettier
			json = { "prettier" },
			-- For Markdown, use Prettier
			lua = { "stylua" },
			markdown = { "prettier" },
			-- Add any other filetypes Prettier supports that you use
			-- E.g., vue = { "prettier" }, yaml = { "prettier" },
		},
		-- Autoformat on save (highly recommended for a Prettier-like experience)
		format_on_save = {
			timeout_ms = 500, -- Maximum time to wait for the formatter
			lsp_fallback = true, -- If conform can't find a formatter, try LSP
		},
	},
}
