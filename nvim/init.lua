require('custom/plugins')
vim.keymap.set('n', 'U', '<C-r>')
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wildmode = 'longest:full,full'
vim.opt.title = true
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.spell = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.fillchars:append({ eob = ' ' })
vim.opt.splitright = true
vim.opt.scrolloff = 6
vim.opt.sidescrolloff = 6
vim.opt.clipboard = 'unnamedplus'
vim.opt.confirm = true
vim.opt.undofile = true
vim.g.mapleader = ' '
vim.g.localleader = ' '
vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")
