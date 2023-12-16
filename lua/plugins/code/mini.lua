return {
	"echasnovski/mini.nvim",
	version = false,
	config = function()
		require("mini.indentscope").setup({
			symbol = "│",
			options = {
				try_as_border = true,
			},
		})
		require("mini.pairs").setup( -- No need to copy this inside `setup()`. Will be used automatically.
			{
				modes = { insert = true, command = false, terminal = false },
				mappings = {
					["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." },
					["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." },
					["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." },

					[")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." },
					["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." },
					["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." },

					['"'] = { action = "closeopen", pair = '""', neigh_pattern = "[^\\].", register = { cr = false } },
					["'"] = { action = "closeopen", pair = "''", neigh_pattern = "[^%a\\].", register = { cr = false } },
					["`"] = { action = "closeopen", pair = "``", neigh_pattern = "[^\\].", register = { cr = false } },
				},
			}
		)
		require("mini.surround").setup( -- No need to copy this inside `setup()`. Will be used automatically.
			{
				custom_surroundings = nil,
				highlight_duration = 500,
				mappings = {
					add = "<leader>a", -- Add surrounding in Normal and Visual modes
					delete = "<leader>d", -- Delete surrounding
					find = "<leader>f", -- Find surrounding (to the right)
					find_left = "<leader>F", -- Find surrounding (to the left)
					highlight = "<leader>h", -- Highlight surrounding
					replace = "<leader>r", -- Replace surrounding
					update_n_lines = "<leader>n", -- Update `n_lines`

					suffix_last = "l", -- Suffix to search with "prev" method
					suffix_next = "n", -- Suffix to search with "next" method
				},
				n_lines = 20,
				respect_selection_type = false,
				search_method = "cover",
				silent = false,
			}
		)
	end,
}
