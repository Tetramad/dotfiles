local map = vim.keymap.set

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
map('v', '<C-j>', ':m \'>+1<CR>gv=gv', {noremap = true})
map('v', '<C-k>', ':m \'<-2<CR>gv=gv', {noremap = true})
map('i', '<C-j>', '<ESC>:m .+1<CR>==a', {noremap = true})
map('i', '<C-k>', '<ESC>:m .-2<CR>==a', {noremap = true})
map('n', '<C-j>', ':m .+1<CR>==', {noremap = true})
map('n', '<C-k>', ':m .-2<CR>==', {noremap = true})

-- LSP
map('n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>', {noremap = true, silent = true})
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {noremap = true, silent = true})
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {noremap = true, silent = true})

map({'n', 'v'}, '<leader>y', [["+y]])
map('n', '<leader>Y', [["+Y]])

map('n', 'Q', '<nop>')
