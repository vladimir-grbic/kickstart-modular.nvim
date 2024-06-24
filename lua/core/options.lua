-- [[ Setting options ]]
-- See `:help vim.opt`.

local options = {
  breakindent = true, -- Every wrapped line will continue visually indented.
  cursorline = true, -- Highlight the current line.
  expandtab = false, -- Convert tabs to spaces.
  hlsearch = true, -- Highlight all matches on previous search pattern.
  ignorecase = true, -- Ignore case in search patterns.
  inccommand = 'split', -- Preview substitutions live as you type.
  list = true, -- List mode
  listchars = { tab = '» ', trail = '·', nbsp = '␣' }, -- Strings to use in list mode.
  mouse = '', -- Set mouse mode.
  number = true, -- Make lines numbered.
  relativenumber = true, -- Make numbered lines relative.
  scrolloff = 10, -- Minimal number of screen lines to be kept above and below the cursor.
  shiftwidth = 8, -- The number of spaces inserted for each indentation.
  showmode = false, -- Display the mode information in the statusline.
  showtabline = 2, -- Always show tabs.
  signcolumn = 'yes', -- Populate the signcolumn with useful information/hints (eg. git, lsp, debugger).
  smartcase = true, -- Improve the search for some patterns.
  smartindent = true, -- Make indenting smarter again.
  splitright = false, -- Position of the new vertical splits.
  splitbelow = false, -- Position of the new horizontal splits.
  tabstop = 8, -- Number of spaces to be used per tab.
  termguicolors = true, -- Enable 24-bit RGB color for true color terminals.
  textwidth = 80, -- Maximum width of text per line.
  timeoutlen = 300, -- Decrease mapped sequence wait time. (Displays which-key popup sooner.)
  undofile = true, -- Save undo history.
  updatetime = 250, -- Decrease update time.
  wrap = true, -- Display lines as one long line.
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- vim: ts=2 sts=2 sw=2 et
