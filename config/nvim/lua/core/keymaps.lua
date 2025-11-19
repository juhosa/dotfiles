vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Use 'jk' to escape in insert mode
vim.keymap.set('i', 'jk', '<Esc>', { nowait = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<leader>bs', '<C-w><C-s>', { desc = '[B]uffer [S]plit' })
vim.keymap.set('n', '<leader>bq', '<C-w><C-q>', { desc = '[B]uffer [Q]uit' })

local opts_zk = { noremap = true, silent = false }

-- Create a new note after asking for its title.
vim.api.nvim_set_keymap('n', '<leader>zn', "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", opts_zk)

-- Open notes.
vim.api.nvim_set_keymap('n', '<leader>zo', "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", opts_zk)
-- Open notes associated with the selected tags.
vim.api.nvim_set_keymap('n', '<leader>zt', '<Cmd>ZkTags<CR>', opts_zk)

-- Search for the notes matching a given query.
vim.api.nvim_set_keymap('n', '<leader>zf', "<Cmd>ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }<CR>", opts_zk)
-- Search for the notes matching the current visual selection.
vim.api.nvim_set_keymap('v', '<leader>zf', ":'<,'>ZkMatch<CR>", opts_zk)
