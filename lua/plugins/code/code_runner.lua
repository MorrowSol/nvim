return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
			filetype = {
				cpp = {
					"g++ -g $file --std=c++17 -I $(pwd)/.vscode",
					"-o $(pwd)/.vscode/exe/$fileNameWithoutExt",
					"&& $(pwd)/.vscode/exe/$fileNameWithoutExt",
				},
			},
		})
		vim.keymap.set("n", "<F5>", ":RunCode<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
		-- vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
	end,
}
