-- Set <space> as the leader key.
-- See `:help mapleader`.
-- NOTE: This must happen before plugins are loaded. Otherwise, wrong leader
-- will be used.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal.
vim.g.have_nerd_font = true

-- [[ Import basic keymaps, options and autocommands. ]]
require 'core'

-- [[ Bootstrap Lazy.nvim and configure and install plugins. ]]
require 'plugin_manager'

-- The line beneath this is called `modeline`. See `:help modeline`.
-- vim: ts=2 sts=2 sw=2 et
