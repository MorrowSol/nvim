local opt = vim.opt
-- 行号
opt.relativenumber = true
opt.number = true
-- 缩进 缩进为4 回车后自动缩进4 用空格代替tab
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- 设置过长的行是否换行显示
-- opt.wrap = false
-- 光标行高亮
opt.cursorline = true
-- 剪贴板通用
opt.clipboard:append("unnamedplus")
-- 开启终端24bit颜色
opt.termguicolors = true
-- 设置标志列(最左边)始终开启
opt.signcolumn = "yes"
-- 将连字符视为单词的一部分
opt.iskeyword:append("-")
opt.iskeyword:append("-,>")
