return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			local dap = require("dap")
			dap.adapters.cppdbg = {
				id = "cppdbg",
				type = "executable",
				command = "/home/chen/.local/share/nvim/mason/bin/OpenDebugAD7",
			}
			dap.configurations.cpp = {
				{
					name = "Launch file(同目录out文件)",
					type = "cppdbg",
					request = "launch",
					program = "${workspaceFolder}/${fileBasenameNoExtension}",
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
				},
				{
					name = "Launch file(输入文件名)",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
				},
			}
			dap.configurations.c = dap.configurations.cpp
			-- nil表示调用默认位置 当前目录.vscode/launch.json
			require("dap.ext.vscode").load_launchjs(nil, { cppdbg = { "cpp" } })
			vim.keymap.set("n", "<F5>", ":DapContinue<CR>")
			vim.keymap.set("n", "<F9>", ":DapToggleBreakpoint<CR>")
			vim.keymap.set("n", "<F10>", ":DapStepOver<CR>")
			vim.keymap.set("n", "<F11>", ":DapStepInto<CR>")
			vim.keymap.set("n", "<S-F11>", ":DapStepOut<CR>")
			vim.keymap.set("n", "<F12>", ":DapTerminate<CR>")
		end,
	},
}
