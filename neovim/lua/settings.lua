local vim_true = 1
local vim_false = 0

vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')

local opt = vim.opt
opt.background = 'dark'
opt.backspace = {'indent', 'eol', 'start'}
opt.backup = false
opt.belloff = 'all'
opt.clipboard = 'unnamedplus'
opt.colorcolumn = '80'
opt.completeopt = {'menuone', 'preview'}
opt.encoding = 'utf-8'
opt.expandtab = true
opt.hidden = true
opt.history = 50
opt.hlsearch = false
opt.incsearch = true
opt.laststatus = 2
opt.listchars = {tab = '» ', trail = '·', eol = '$'}
opt.number = true
opt.path = {'.', '**'}
opt.relativenumber = true
opt.scrolloff = 4
opt.shiftwidth = 4
opt.signcolumn = 'yes'
opt.softtabstop = 4
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true
opt.updatetime = 300
opt.wildmenu = true
opt.wrap = false

local g = vim.g
g.mapleader = ' '

g.loaded_netrw = vim_true
g.loaded_netrwPlugin = vim_true

g.loaded_python_provider = vim_false
g.loaded_ruby_provider = vim_false
g.loaded_perl_provider = vim_false
g.loaded_node_provider = vim_false

g.lightline = {colorscheme = 'nord'}

if opt.columns:get() < 160 then
    g.venter_width = tostring(opt.columns:get() / 6)
end

vim.cmd[[
augroup c_project
    autocmd!
    autocmd BufRead,BufNewFile *.c,*.h set filetype=c
augroup END
]]

vim.cmd[[
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert
]]
