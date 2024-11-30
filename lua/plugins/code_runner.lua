return {
	{
		"CRAG666/code_runner.nvim",
		config = true,
		keys = {
			{ "<leader>r", "<cmd>RunCode<cr>", desc = "RunCode" },
		},
		opts = {
			mode = "float",
			startinsert = true,
			float = {
				border = "rounded",
			},
		},
	},
}
