local del = vim.keymap.del
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
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local opts = { buffer = ev.buf, noremap = true, silent = true };
    del('n', 'K', { buffer = ev.buf })
    map('n', 'gD', vim.lsp.buf.declaration, opts)
    map('n', 'gd', vim.lsp.buf.definition, opts)
    map('n', '<leader>h', vim.lsp.buf.hover, opts)
    map('n', '<leader>c', vim.lsp.buf.rename, opts)
    map('n', 'gr', vim.lsp.buf.references, opts)
    map('n', '<leader>d', vim.diagnostic.open_float, opts)
    map('n', '[d', vim.diagnostic.goto_prev, opts)
    map('n', ']d', vim.diagnostic.goto_next, opts)
    map('n', '<leader>D', vim.diagnostic.setloclist, opts)
  end,
})

map({'n', 'v'}, '<leader>y', [["+y]])
map('n', '<leader>Y', [["+Y]])

map('n', 'Q', '<nop>')
