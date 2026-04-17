require("config.lazy")

-- Quick Save
vim.keymap.set({'n','i'}, '<F5>', ':w<cr>', { desc = 'Save file'})

-- Escape terminal
vim.keymap.set('t','<Esc>', [[<C-\><C-n>]], { noremap = true })

-- Yank to clipboard
vim.opt.clipboard = "unnamedplus"

-- Indentation Config
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

