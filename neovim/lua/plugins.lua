local Plug = vim.fn['plug#']
vim.call('plug#begin', vim.call('stdpath', 'data')..'/plugged')
Plug('tpope/vim-surround')
Plug('arcticicestudio/nord-vim')
Plug('itchyny/lightline.vim')
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim', {branch = '0.1.x'})
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('nvim-treesitter/playground')
Plug('nvim-treesitter/nvim-treesitter-context')

Plug('neovim/nvim-lspconfig')
Plug('rust-lang/rust.vim')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('cespare/vim-toml')
vim.call('plug#end')