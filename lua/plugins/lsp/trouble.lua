return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function(_, opts)
		require("trouble").setup(opts)
		-- Lua
		-- vim.keymap.set("n", "<leader>xx", function()
		-- 	require("trouble").toggle()
		-- end)
		-- vim.keymap.set("n", "<leader>xX", function()
		-- 	require("trouble").toggle("workspace_diagnostics")
		-- end)
		-- vim.keymap.set("n", "<leader>xx", function()
		-- 	require("trouble").toggle("document_diagnostics")
		-- end)
		-- vim.keymap.set("n", "<leader>xq", function()
		-- 	require("trouble").toggle("quickfix")
		-- end)
		-- vim.keymap.set("n", "<leader>xl", function()
		-- 	require("trouble").toggle("loclist")
		-- end)
		-- vim.keymap.set("n", "gR", function()
		-- 	require("trouble").toggle("lsp_references")
		-- end)
	end,
	keys = {
		{
			"<leader>xX",
			function()
				require("trouble").toggle("workspace_diagnostics")
			end,
			desc = "workspace_diagnostics",
		},
		{
			"<leader>xx",
			function()
				require("trouble").toggle("document_diagnostics")
			end,
			desc = "document_diagnostics",
		},
		{
			"<leader>xq",
			function()
				require("trouble").toggle("quickfix")
			end,
			desc = "quickfix",
		},
		{
			"<leader>xl",
			function()
				require("trouble").toggle("loclist")
			end,
			desc = "loclist",
		},
	},
}
