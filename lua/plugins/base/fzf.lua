return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		-- calling `setup` is optional for customization
		require("fzf-lua").setup({})
		vim.keymap.set({ "n", "x" }, "<C-p>", ":FzfLua files<CR>")
		vim.keymap.set({ "n", "x" }, "<C-f>", ":FzfLua grep_curbuf<CR>")
		vim.keymap.set({ "n", "x" }, "<leader>f", ":FzfLua live_grep<CR>")
	end,
}
