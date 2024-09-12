vim.cmd 'nmap <leader>c :e ~/.config/nvim/init.lua<cr>'
vim.cmd 'nmap <leader>s :w<cr>'
vim.cmd 'nmap j gj'
vim.cmd 'nmap k gk'

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
