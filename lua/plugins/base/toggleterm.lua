return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			insert_mappings = true,
			terminal_mappings = true,
			direction = "float",
			start_in_insert = true,
		})

		local Terminal = require("toggleterm.terminal").Terminal
		local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

		function _lazygit_toggle()
			lazygit:toggle()
		end

		vim.api.nvim_set_keymap("n", "<leader>g", ":lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
	end,
}
