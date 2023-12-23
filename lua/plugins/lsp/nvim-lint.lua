return {
	"mfussenegger/nvim-lint",
	-- 使用clangd自带的clang-tidy
	enabled = false,
	config = function()
		require("lint").linters_by_ft = {
			cpp = { "cpplint" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
