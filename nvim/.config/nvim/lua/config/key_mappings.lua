vim.g.mapleader = " "

--NeoTree
vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

-- BufferLines
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>X', ':BufferLineCloseRight<CR>')
vim.keymap.set('n', '<leader>s', ':BufferLineSortByTabs<CR>')
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')

-- Terminal
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<CR>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<CR>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical size=40<CR>')-- vim.keymap.set('n', '<leader>t', ':ToggleTerm dir=. direction=horizontal<CR>')
