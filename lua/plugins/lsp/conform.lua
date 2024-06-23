return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang_format" },
			vue = { "prettier" },
			rust = { "rustfmt" },
		},
		format_on_save = {
			timeout_ms = 500,
		},
	},
	config = function(_, opts)
		require("conform.formatters.clang_format").args = {
			"--style={BasedOnStyle: Google, IndentWidth: 4, AccessModifierOffset: -3}",
		}
		require("conform").setup(opts)
	end,
}
