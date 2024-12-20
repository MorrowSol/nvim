return {
	"gbprod/yanky.nvim",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		require("yanky").setup()
		vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)")
		vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)")
		vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)")
		vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)")
		vim.keymap.set({ "n", "x" }, "<leader>p", ":Telescope yank_history<CR>")
	end,
}
