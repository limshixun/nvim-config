require("config.lazy")
require("toggleterm").setup()

-- Quick Save and Quit
vim.keymap.set({ 'n', 'i' }, '<F5>', ':wq<cr>', { desc = 'Save file' })

-- Escape terminal
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

-- Yank to clipboard
vim.opt.clipboard = "unnamedplus"

-- Indentation Config
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Line number
vim.opt.number = true
