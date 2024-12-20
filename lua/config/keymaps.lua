vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
-- 经常按错
vim.cmd("command! -nargs=0 W w")
vim.cmd("command! -nargs=0 Wq wq")
vim.cmd("command! -nargs=0 Q q")
vim.g.UltiSnipsJumpForwardTrigger = "<Tab>"
-- window navigation
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-q>", "<C-w>q")
-- keymap.set("n", "<C-\\>", "<C-w>v")
-- keymap.set("n", "<C-->", "<C-w>s")
-- resize window
keymap.set("n", "<C-Up>", ":resize -2<CR>")
keymap.set("n", "<C-Down>", ":resize +2<CR>")
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")
-- 缩进
keymap.set("v", "<S-TAB>", "<gv")
keymap.set("v", "<TAB>", ">gv")
-- 多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- 取消高亮
keymap.set("n", "<leader>nh", ":nohlsearch<CR>")
-- 复制粘贴
keymap.set("n", "Y", "yiw")
keymap.set("n", "<leader>v", 'diw"0P')
