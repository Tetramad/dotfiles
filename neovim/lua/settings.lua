local vim_true = 1
local vim_false = 0

local Plug = vim.fn['plug#']
vim.call('plug#begin', vim.call('stdpath', 'data')..'/plugged')
Plug('tpope/vim-surround')
Plug('arcticicestudio/nord-vim')
Plug('itchyny/lightline.vim')
Plug('rust-lang/rust.vim')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('cespare/vim-toml')
vim.call('plug#end')

local cmd = vim.cmd
vim.cmd('filetype plugin indent on')
vim.cmd('syntax on')
vim.cmd('colorscheme nord')

local opt = vim.opt
opt.background = 'dark'
opt.backspace = {'indent', 'eol', 'start'}
opt.belloff = 'all'
opt.completeopt = {'menuone', 'preview'}
opt.hidden = true
opt.history = 50
opt.hlsearch = false
opt.incsearch = true
opt.listchars = {tab = '» ', trail = '·', eol = '$'}
opt.number = true
opt.relativenumber = true
opt.splitbelow = true
opt.splitright = true
opt.wildmenu = true
opt.laststatus = 2
opt.encoding = 'utf-8'
opt.wrap = false
opt.path = {'.', '**'}
opt.clipboard = 'unnamedplus'

local g = vim.g
g.mapleader = ' '

g.loaded_netrw = vim_true
g.loaded_netrwPlugin = vim_true

g.loaded_python_provider = vim_false
g.loaded_ruby_provider = vim_false
g.loaded_perl_provider = vim_false
g.loaded_node_provider = vim_false
g.clipboard = 'wl-copy'

g.lightline = {colorscheme = 'nord'}

cmd[[
augroup c_project
	autocmd!
	autocmd BufRead,BufNewFile *.c,*.h set filetype=c
augroup END
]]

cmd[[
autocmd TermOpen * setlocal nonumber norelativenumber
autocmd TermOpen * startinsert
]]

