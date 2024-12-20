return {
	"nvimdev/lspsaga.nvim",
	enable = false,
	dependencies = {
		"nvim-treesitter/nvim-treesitter", -- optional
		"nvim-tree/nvim-web-devicons", -- optional
	},
	config = function()
		require("lspsaga").setup({
			ui = {
				border = "single",
				devicon = true,
				title = true,
				code_action = "",
			},
		})
		vim.keymap.set("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>")
		vim.keymap.set("n", "]d", ":Lspsaga diagnostic_jump_next<CR>")
		-- vim.keymap.set("n", "<leader>ca", ":Lspsaga code_action<CR>") use actions-preview instead
		vim.keymap.set("n", "gu", ":Lspsaga finder<CR>")
		vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>")
		-- vim.keymap.set("n", "go", ":Lspsaga outline<CR>") use outline instead
		vim.keymap.set("n", "<leader>ra", ":Lspsaga rename<CR>")
	end,
}
