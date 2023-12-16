local opt = vim.opt
-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true
opt.clipboard:append("unnamedplus")

opt.termguicolors = true
opt.signcolumn = "yes"
