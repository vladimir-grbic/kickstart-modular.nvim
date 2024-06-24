-- [[ Basic Keymaps ]]
-- See `:help vim.keymap.set()`.

-- NOTE: The plugin-specific keymaps are located in the plugin configuration files.
-- Different modes:
-- n - normal_mode
-- i - insert_mode
-- v - visual_mode
-- x - visual_block_mode
-- t - term_mode
-- c - command_mode

-- Map the leader key to space.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Copy to system clipboard.
vim.keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })
vim.keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank to system clipboard' })

-- Delete to void register.
vim.keymap.set('n', '<leader>x', '"_x', { desc = 'Delete character to void register' })
-- vim.keymap.set('n', '<leader>d', '"_d', { desc = '[D]elete to void register' })
vim.keymap.set('v', '<leader>x', '"_x', { desc = 'Delete character to void register' })
-- vim.keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete to void register' })

-- Clear highlight search on pressing <Esc> in normal mode.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move blocks of text in visual mode.
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Keep the cursor static while appending the line(s) from below.
vim.keymap.set('n', 'J', 'mzJ`z')

-- Keep the cursor in the middle of the screen while reading the file.
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- Keep search term in the middle of the screen while iterating.
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Increment/decrement numbers.
vim.keymap.set('n', '<leader>+', '<C-a>', { desc = 'Increment integer' })
vim.keymap.set('n', '<leader>-', '<C-x>', { desc = 'Decrement integer' })

-- Simplify movements accross windows.
-- See `:help wincmd` for a list of all window commands.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- vim: ts=2 sts=2 sw=2 et
