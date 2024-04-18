return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"folke/neodev.nvim",
			opts = {},
		},
		"mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"p00f/clangd_extensions.nvim",
	},
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig["lua_ls"].setup({})
		-- c++
		lspconfig["clangd"].setup({
			on_attach = function(client, bufnr)
				require("clangd_extensions.inlay_hints").setup_autocmd()
				require("clangd_extensions.inlay_hints").set_inlay_hints()
			end,
		})
		lspconfig["rust_analyzer"].setup({})

		-- require("clangd_extensions.inlay_hints").setup_autocmd()
		-- require("clangd_extensions.inlay_hints").set_inlay_hints()
		vim.keymap.set("n", "<space>d", vim.diagnostic.open_float)
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"
				local opts = { buffer = ev.buf }
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			end,
		})
	end,
}
