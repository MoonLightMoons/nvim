return {
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
		opts = {
			start_in_insert = true,
			direction = "float",
		},
		keys = {
			{ "<c-\\>", "<cmd>ToggleTerm<cr>", desc = "ToggleTerm" },
		},
	},
}
