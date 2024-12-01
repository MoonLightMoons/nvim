return {
	{
		"mfussenegger/nvim-dap",
		keys = {
			{
				"<f4>",
				function()
					require("dap").toggle_breakpoint()
				end,
				desc = "Toggle breakpoint",
			},
			{
				"<f5>",
				function()
					require("dap").continue()
				end,
				desc = "launch/continue gdb",
			},
			{
				"<f10>",
				function()
					require("dap").step_over()
				end,
				desc = "Step over",
			},
			{
				"<C-f10>",
				function()
					require("dap").step_into()
				end,
				desc = "Step into",
			},
			{
				"<C-f>",
				function()
					require("dap").step_out()
				end,
				desc = "Step out",
			},
			{
				"<C-f5>",
				function()
					require("dap").terminate()
				end,
				desc = "Terminate",
			},
		},
		config = function()
			local dap = require("dap")
			dap.adapters.cppdbg = {
				id = "cppdbg",
				type = "executable",
				command = "/home/MLM/Downloads/tool/cpptools-linux-x64/extension/debugAdapters/bin/OpenDebugAD7",
			}
			dap.configurations.cpp = {
				{
					name = "Launch file",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
					setupCommands = {
						{
							text = "-enable-pretty-printing",
							description = "enable pretty printing",
							ignoreFailures = false,
						},
					},
				},
			}
		end,
	},
}

--[[
local dap_breakpoint_color = {
  breakpoint = {
    ctermbg = 0,
    fg = '#993939',
    bg = '#31353f',
  },
  logpoint = {
ctermbg = 0,
  fg = '#61afef',
  bg = '31353f',
},
stopped = {
ctermbg = 0,
  fg = '#98c379',
  bg = '#31353f',
},
}
  ]]
--
