return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
		require("which-key").setup({})
		local wk = require("which-key")
		wk.register({
			f = {
				name = " telescope", -- optional group name
			},
			s = {
				name = " mini.surround",
			},
			c = {
				name = " lsp code_action",
			},
			r = {
				name = " lsp rename",
			},
			x = {
				name = " trouble",
			},
			d = {
				name = "diagnostic.open_float",
			},
		}, {
			prefix = "<leader>",
		})
	end,
}
