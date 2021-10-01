local map = vim.api.nvim_set_keymap

map('', '<Space>', '<Nop>', {noremap = true})

--thx Primeagen https://youtu.be/hSHATqh8svM
-- Number 5: Behave Vim
map('n', 'Y', 'y$', {noremap = true})
-- Number 4: Keeping it centered
map('n', 'n', 'nzzzv', {noremap = true})
map('n', 'N', 'Nzzzv', {noremap = true})
map('n', 'J', 'mzJ`z', {noremap = true})
-- Number 3: Undo break points
map('i', ',', ',<C-g>u', {noremap = true})
map('i', '.', '.<C-g>u', {noremap = true})
map('i', '!', '!<C-g>u', {noremap = true})
map('i', '?', '?<C-g>u', {noremap = true})
-- Number 2: Jumplist mutations
map('n', 'k', '(v:count > 5 ? "m\'" . v:count : "") . \'k\'',
   {noremap = true, expr = true}
)
map('n', 'j', '(v:count > 5 ? "m\'" . v:count : "") . \'j\'',
   {noremap = true, expr = true}
)
-- Number 1: Moving text
map('v', 'J', ':m \'>+1<CR>gv=gv', {noremap = true})
map('v', 'K', ':m \'<-2<CR>gv=gv', {noremap = true})
map('i', '<C-j>', '<ESC>:m .+1<CR>==a', {noremap = true})
map('i', '<C-k>', '<ESC>:m .-2<CR>==a', {noremap = true})
map('n', '<leader>j', ':m .+1<CR>==', {noremap = true})
map('n', '<leader>k', ':m .-2<CR>==', {noremap = true})
