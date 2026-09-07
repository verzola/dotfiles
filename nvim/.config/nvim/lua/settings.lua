-------------------------------------------------
-------------------- Settings -------------------
-------------------------------------------------
local set = vim.opt
local g = vim.g

-- Disable netrw early so nvim-tree handles directory browsing
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

g.mapleader = ',' -- Change leader key
g.maplocalleader = ','
g.loaded_perl_provider = 0
g.loaded_python3_provider = 0
g.loaded_ruby_provider = 0

set.pumblend = 30                                 -- Enables pseudo-transparency for the popup-menu.
set.background = 'dark'                           -- 
set.backup = false                                -- Make a backup before overwriting a file.
set.clipboard = 'unnamedplus'                     -- Use the system clipboard.
set.completeopt = {'menu', 'menuone', 'noselect'} -- Completion options
set.confirm = true                                -- Confirm unsaved changes on certain operations.
set.cursorline = true                             -- Highlight the text line of the cursor with CursorLine.
set.expandtab = true                              -- Use spaces instead of tabs.
set.hlsearch = true                               -- Highlight all search pattern matches.
set.ignorecase = true                             -- Ignore case in search patterns.
set.incsearch = true                              -- Show pattern match while typing.
set.joinspaces = false                            -- Insert two spaces after a '.', '?' and '!' with a join command.
set.list = true                                   -- Show some invisible characters.
set.mouse = 'a'                                   -- Enables mouse support.
set.number = true                                 -- Print the line number in front of each line.
set.scrolloff = 10                                -- Minimal number of screen lines to keep above and below the cursor.
set.shiftround = true                             -- Round indent to multiple of 'shiftwidth'.
set.shiftwidth = 2                                -- Number of spaces to use for each step of (auto)indent.
set.showmatch = true                              -- Briefly jump to the matching bracket when inserted.
set.sidescrolloff = 8                             -- Minimal number of screen columns to keep around the cursor.
set.signcolumn = 'yes'                            -- When and how to draw the signcolumn.
set.smartcase = true                              -- Override 'ignorecase' if search pattern has uppercase.
set.softtabstop = 2                               -- Number of spaces that a <Tab> counts for while editing.
set.splitbelow = true                             -- Splitting a window will put the new window below.
set.splitright = true                             -- Splitting a window will put the new window right.
set.swapfile = false                              -- Disable swapfile for buffer.
set.tabstop = 2                                   -- Number of spaces that a <Tab> in the file counts for.
set.termguicolors = true                          -- Enables 24-bit RGB color in the TUI.
set.title = true                                  -- Set window title to 'titlestring'.
set.undofile = true                               -- Automatically save undo history (in ~/.local/state/nvim/undo).
set.undolevels = 99999                            -- Maximum number of changes that can be undone.
set.updatetime = 250                              -- Quicker CursorHold events.
set.wildmode = {'list', 'longest'}                -- Completion mode for commandline.
set.wrap = false                                  -- Disable line wrap.
set.writebackup = false                           -- Make a backup before overwriting a file.
set.cmdheight = 0                                 -- Number of screen lines to use for the command-line.

vim.opt.formatoptions:append("j")
