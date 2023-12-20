return {
	"nvim-tree/nvim-tree.lua",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local nvimtree = require("nvim-tree")
		-- disable netrw at the very start of your init.lua
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		-- set termguicolors to enable highlight groups
		vim.opt.termguicolors = true

		nvimtree.setup({
			sort = {
				sorter = function(nodes)
					table.sort(nodes, function(a, b)
						-- directory first
						if a.type == "directory" and b.type == "file" then
							return true
						elseif a.type == "file" and b.type == "directory" then
							return false
						end
						local a_num = string.match(a.name, "^[0-9]+")
						local b_num = string.match(b.name, "^[0-9]+")
						if a_num and b_num then
							return tonumber(a_num) < tonumber(b_num)
						else
							return a.name < b.name
						end
					end)
				end,
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = true,
			},
		})
		vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
	end,
}
