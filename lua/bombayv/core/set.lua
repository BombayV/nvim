vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

function SetTabs(tabNum)
	vim.opt.tabstop = tabNum
	vim.opt.softtabstop = tabNum
	vim.opt.shiftwidth = tabNum
end

SetTabs(2)