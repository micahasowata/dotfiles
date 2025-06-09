require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	install = { colorscheme = { "habamax" } },
	checker = { enabled = true },
})

require("catppuccin").setup()
vim.cmd.colorscheme("catppuccin")

require("lualine").setup({
	options = {
		theme = "auto",
	},
})

require("oil").setup()

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		go = { "goimports", "gofumpt" },
		javascript = { "biome-organize-imports", "biome-check", "biome" },
		typescript = { "biome-organize-imports", "biome-check", "biome" },
	},

	format_on_save = {
		lsp_format = "fallback",
		timeout_ms = 500,
	},

	format_after_save = {
		lsp_format = "fallback",
	},

	notify_on_error = true,
	notify_no_formatters = true,
})

vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})
