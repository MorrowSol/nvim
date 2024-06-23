return {
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").DEFAULT_NAMESPACE = {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = true, -- "Name" codes like Blue
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = false, -- CSS hsl() and hsla() functions
				css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
				-- Available modes: foreground, background
				mode = "background", -- Set the display mode.
			}
			require("colorizer").setup({
				css = {
					RRGGBBAA = true, -- #RRGGBBAA hex codes
					rgb_fn = true,
				},
				"javascript",
				"html",
				"vue",
			})
		end,
	},
	{
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker").setup()
		end,
	},
}
