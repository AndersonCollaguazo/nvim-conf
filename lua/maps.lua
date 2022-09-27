local keymap = vim.keymap

vim.keymap.set({ 'n', 'x' }, 'x', '"_x')

vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<CR>', { desc = 'Seleccionar todo' })
vim.keymap.set('n', '<leader>w', ':w<cr>', { desc = 'Guardar' })
vim.keymap.set('n', '<leader>q', ':q<cr>', { desc = 'Cerrar' })
vim.keymap.set('n', '<leader>qq', ':q!<cr>', { desc = 'Salir sin guardar' })

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', 'fh', '5<C-w><')
keymap.set('n', 'fl', '5<C-w>>')
keymap.set('n', 'fk', '5<C-w>+')
keymap.set('n', 'fj', '5<C-w>-')

keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

--clear searching
keymap.set('n', '<leader>l', ':nohlsearch<cr>')

--execute js
keymap.set('n', '<leader>x', ':!node %<cr>')

--Commnet
keymap.set('n', '<S-c>', ':Commentary<cr>')
keymap.set('v', '<S-c>', ':Commentary<cr>')
