return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			spec = {
				{ "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Fuzzy Find Files", mode = "n" },
				{ "<leader>fo", "<cmd>Oil<cr>", desc = "Manipulate filesystem", mode = "n" },
				{ "<leader>ft", "<cmd>terminal<cr>", desc = "Open terminal", mode = "n" },
				{ "<C-s>", "<cmd>w<cr>", desc = "Save current file", mode = "n" },
				{ "<C-s>", "<cmd>w<cr>", desc = "Save current file (insert mode)", mode = "i" },
				{ "<leader>q", "<cmd>wq<cr>", desc = "Quit (it saves file too)", mode = "n" },
			},
		},

		keys = {

			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Hello from which-key",
			},
		},
	},
}
