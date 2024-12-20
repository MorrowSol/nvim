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
		-- lua
		lspconfig["lua_ls"].setup({})
		-- c++
		lspconfig["clangd"].setup({
			on_attach = function(client, bufnr)
				require("clangd_extensions.inlay_hints").setup_autocmd()
				require("clangd_extensions.inlay_hints").set_inlay_hints()
			end,
		})
		require("lspconfig").cmake.setup({})
		-- rust
		lspconfig["rust_analyzer"].setup({})
		-- vue
		local mason_registry = require("mason-registry")
		local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
			.. "/node_modules/@vue/language-server"
		lspconfig.ts_ls.setup({
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = vue_language_server_path,
						languages = { "vue" },
					},
				},
			},
			filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
		})
		lspconfig.volar.setup({})
		-- require("clangd_extensions.inlay_hints").setup_autocmd()
		-- require("clangd_extensions.inlay_hints").set_inlay_hints()
		-- vim.lsp.inlay_hint.enable(true)
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
