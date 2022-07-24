local set = vim.opt
local g = vim.g

g.mapleader = ','
g.material_style = "deep ocean"

-- Settings already defined by vim-sensible
--set.autoindent = true
--set.backspace = {'indent', 'eol', 'start'}
--set.smarttab = true
--set.complete = set.complete - {'i'}
--set.nrformats = set.nrformats - {'octal'}
--set.ttimeout = true
--set.ttimeoutlen = 100
--set.laststatus = 2
--set.ruler = true
--set.wildmenu = true
--set.display = set.display + {'lastline'}
--set.encoding = "utf-8"
--set.formatoptions = set.formatoptions + {'j'}
--set.autoread = true
--set.history = 1000
--set.tabpagemax = 50
--set.sessionoptions = set.sessionoptions - {'options'}
--set.viewoptions = set.viewoptions - {'options'}
set.pumblend = 30
set.background = 'dark'
set.backup = false
set.clipboard = 'unnamedplus'
set.compatible = false
set.completeopt = {'menu', 'menuone', 'noselect'}      -- Completion options (for deoplete)
set.confirm = true
set.cursorline = true
set.expandtab = true                                   -- Use spaces instead of tabs
set.hidden = true                                      -- Enable background buffers
set.hlsearch = true
set.ignorecase = true                                  -- Ignore case
set.incsearch = true
set.joinspaces = false                                 -- No double spaces with join
set.lazyredraw = true
set.list = true                                        -- Show some invisible characters
set.mouse = 'a'
set.number = true                                      -- Show line numbers
set.pastetoggle = '<F12>'
set.scrolloff = 10                                     -- Lines of context
set.shiftround = true                                  -- Round indent
set.shiftwidth = 2                                     -- Size of an indent
set.showmatch = true
set.sidescrolloff = 8                                  -- Columns of context
set.signcolumn = 'yes'
set.smartcase = true                                   -- Do not ignore case with capitals
set.smartindent = true                                 -- Insert indents automatically
set.softtabstop = 2
set.splitbelow = true                                  -- Put new windows below current
set.splitright = true                                  -- Put new windows right of current
set.swapfile = false
set.tabstop = 2                                        -- Number of spaces tabs count for
set.termguicolors = true                               -- True color support
set.title = true
set.undofile = true
set.undolevels = 99999
set.updatetime = 250
set.wildmode = {'list', 'longest'}                     -- Command-line completion mode
set.wrap = false                                       -- Disable line wrap
set.writebackup = false

vim.g.catppuccin_flavour = "mocha"

require("catppuccin").setup{
  transparent_background = true,
}

vim.cmd([[
  colorscheme catppuccin
  set formatoptions+=j
  set undodir=~/.vim-undo
]])
