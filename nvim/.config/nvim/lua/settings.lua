-------------------------------------------------
-------------------- Settings -------------------
-------------------------------------------------
local set = vim.opt
local g = vim.g

g.mapleader = ',' -- Change leader key

----------------------------------------------------------
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
----------------------------------------------------------

set.pumblend = 30                                 -- Enables pseudo-transparency for the popup-menu.
set.background = 'dark'                           -- 
set.backup = false                                -- Make a backup before overwriting a file.
set.clipboard = 'unnamedplus'                     -- 
set.compatible = false                            -- This option has the effect of making Vim either more Vi-compatible, or make Vim behave in a more useful way.
set.completeopt = {'menu', 'menuone', 'noselect'} -- Completion options (for deoplete).
set.confirm = true                                -- When 'confirm' is on, certain operations that would normally fail because of unsaved changes to a buffer.
set.cursorline = true                             -- Highlight the text line of the cursor with CursorLine.
set.expandtab = true                              -- Use spaces instead of tabs.
set.hidden = true                                 -- Enable background buffers.
set.hlsearch = true                               -- When there is a previous search pattern, highlight all its matches.
set.ignorecase = true                             -- Ignore case in search patterns.
set.incsearch = true                              -- While typing a search command, show where the pattern, as it was typed so far, matches.
set.joinspaces = false                            -- Insert two spaces after a '.', '?' and '!' with a join command.
--set.lazyredraw = true                             -- When this option is set, the screen will not be redrawn while executing macros.
set.list = true                                   -- Show some invisible characters.
set.mouse = 'a'                                   -- Enables mouse support.
set.number = true                                 -- Print the line number in front of each line.
set.pastetoggle = '<F12>'                         -- When non-empty, specifies the key sequence that toggles the 'paste' option.
set.scrolloff = 10                                -- Minimal number of screen lines to keep above and below the cursor.
set.shiftround = true                             -- Round indent to multiple of 'shiftwidth'.
set.shiftwidth = 2                                -- Number of spaces to use for each step of (auto)indent.
set.showmatch = true                              -- When a bracket is inserted, briefly jump to the matching one.
set.sidescrolloff = 8                             -- The minimal number of screen columns to keep to the left and to the right of the cursor if 'nowrap' is set.
set.signcolumn = 'yes'                            -- When and how to draw the signcolumn.
set.smartcase = true                              -- Override the 'ignorecase' option if the search pattern contains upper case characters.
set.smartindent = true                            -- Do smart autoindenting when starting a new line.
set.softtabstop = 2                               -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
set.splitbelow = true                             -- When on, splitting a window will put the new window below the current one.
set.splitright = true                             -- When on, splitting a window will put the new window right of the current one.
set.swapfile = false                              -- Use a swapfile for the buffer.
set.tabstop = 2                                   -- Number of spaces that a <Tab> in the file counts for.
set.termguicolors = true                          -- Enables 24-bit RGB color in the TUI.
set.title = true                                  -- When on, the title of the window will be set to the value of 'titlestring'.
set.undofile = true                               -- When on, Vim automatically saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read.
set.undolevels = 99999                            -- Maximum number of changes that can be undone.
set.updatetime = 250                              -- If this many milliseconds nothing is typed the swap file will be written to disk.
set.wildmode = {'list', 'longest'}                -- Completion mode that is used for the character specified with 'wildchar'.
set.wrap = false                                  -- This option changes how text is displayed.
set.writebackup = false                           -- Make a backup before overwriting a file.
set.cmdheight = 0                                 -- Number of screen lines to use for the command-line.

vim.cmd([[
  set formatoptions+=j
  set undodir=~/.vim-undo
]])
