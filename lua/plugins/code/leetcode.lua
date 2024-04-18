return {
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim", -- telescope 所需
			"MunifTanjim/nui.nvim",

			-- 可选
			"nvim-treesitter/nvim-treesitter",
			"rcarriga/nvim-notify",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			arg = "leetcode.nvim",
			lang = "cpp",
			cn = {
				enabled = true,
			},
			directory = "/mnt/win/Users/chen/Desktop/研究生资料/研二下/c++学习/src/c++/leetcode",
			image_support = false, -- 将此设置为 `true` 将禁用问题描述的换行 是否使用 image.nvim 渲染问题描述中的图片

			description = {
				position = "left", ---@type lc.position

				width = "0%", ---@type lc.size

				show_stats = true, ---@type boolean
			},
			injector = {
				["cpp"] = {
					before = {
						"#include <bits/stdc++.h>",
						"#include <node.h>",
						"",
						"using namespace std;",
					},
					after = {
						"int main() {",
						"   Solution solution;",
						"   std::cout<< __cplusplus << std::endl;",
						"}",
					},
				},
			},
		},
	},
}
