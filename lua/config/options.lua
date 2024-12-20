local opt = vim.opt

-- 行号
opt.number = true
-- 相对行号
opt.relativenumber = true
-- tab缩进为4
opt.tabstop = 4
-- 回车后自动缩进4
opt.shiftwidth = 4
-- 用空格代替tab
opt.expandtab = true
-- 跟随上一行的缩进
opt.autoindent = true
-- 设置过长的行是否换行显示
-- opt.wrap = false
-- 光标行高亮
opt.cursorline = true
-- 鼠标操作
opt.mouse:append("a")
-- 剪贴板通用
opt.clipboard:append("unnamedplus")
-- 开启终端24bit颜色
opt.termguicolors = true
-- 设置标志列(最左边)始终开启
opt.signcolumn = "yes"
-- 将连字符视为单词的一部分
opt.iskeyword:append("-")
-- 搜索大小写不敏感
opt.ignorecase = true
opt.smartcase = true
-- 复制闪烁
-- vim.api.nvim_create_autocmd("TextYankPost", {
-- 	callback = function()
-- 		vim.highlight.on_yank({
-- 			higroup = "IncSearch",
-- 			timeout = 100,
-- 		})
-- 	end,
-- })

if vim.fn.has("wsl") then
	vim.cmd([[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]])
end
