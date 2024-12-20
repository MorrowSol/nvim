return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.indentscope").setup({
			symbol = "▏",
			options = {
				try_as_border = true,
			},
		})
		require("mini.pairs").setup()
		require("mini.surround").setup({
			mappings = {
				add = "sa", -- Add surrounding in Normal and Visual modes
				delete = "sd", -- Delete surrounding
				replace = "sr", -- Replace surrounding
			},
		})
	end,
}
